## 🧠 Understanding Cylinders, Tracks, and Surfaces on an HDD

> A **cylinder** is a set of **tracks** located at the same radius across **all platter surfaces** in a hard disk drive (HDD).

---

### 📚 Key Definitions

- **Platter**: A circular disk inside the HDD that stores data.
- **Surface**: Each platter has two surfaces (top and bottom), and each surface contains tracks.
- **Track**: A circular path on a surface where data is recorded.
- **Cylinder**: All tracks at the same radius across all surfaces.  
  Think of it as a "vertical slice" through all platters.

---

### 📏 Example

Suppose a hard drive has:

- `3` platters  
- `2` surfaces per platter (top and bottom) → `3 x 2 = 6` total surfaces  
- `100` tracks per surface  

Then:

- ✅ Each surface has `100` concentric tracks (Track 0 to Track 99)
- ✅ There are **100 cylinders** total
- ✅ Each cylinder consists of `6` tracks — one per surface — all at the same radius

---

### 🧱 Structure Overview

| Component            | Count         |
|----------------------|---------------|
| Platters             | 3             |
| Surfaces (Heads)     | 6             |
| Tracks per Surface   | 100           |
| ✅ Total Cylinders    | **100**       |

---

### ✅ TL;DR

> If a surface has `N` tracks, then the HDD has exactly `N` **cylinders** —  
> because cylinders are defined by **track radius**, not by number of surfaces.  
> More surfaces = more data per cylinder, but **not more cylinders**.

---

## ✅ Correct Logical Block Mapping Order on an HDD

> **Logical blocks** (as seen by the operating system) are mapped to **physical sectors** on the HDD in a sequential, spatially optimized order to maximize performance and minimize head movement.

---

### 🔁 Step-by-Step Mapping: Logical → Physical

1. **Start at the outermost cylinder**  
   (i.e., the tracks farthest from the spindle)

2. For each **cylinder**:
   - Loop through each **surface** (one per read/write head: `head 0, 1, 2, ..., N`)
     - Each surface contains **one track at the current cylinder radius**
     - For the current surface:
       - ✅ **Read/write all sectors in sequential order** on that track (circularly as the disk rotates)

3. After all surfaces at the current cylinder are processed:
   - ➡️ **Move radially inward** to the next cylinder  
     (i.e., the next set of tracks closer to the spindle)

4. Repeat this process until the **innermost cylinder** is reached

---

### 📌 Key Points

- **Sectors** are read in **circular** order (via disk rotation)
- **Tracks** are accessed one at a time via **head switching**
- **Cylinders** are traversed **radially** inward by moving the actuator arm

---

### ✅ TL;DR

> Logical blocks are mapped from **outermost to innermost cylinder**,  
> **surface by surface**, **track by track**,  
> and **sector by sector** — in that order —  
> to minimize latency and maximize throughput.
