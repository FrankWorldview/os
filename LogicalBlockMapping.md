## ✅ Correct Logical Block Mapping Order on an HDD

> **Logical blocks** (as seen by the operating system) are mapped to **physical sectors** on the HDD in a sequential, spatially optimised order to maximise performance and minimise head movement.

---

### 🔁 Step-by-step Mapping: Logical → Physical

1. **Start at the outermost cylinder**  
   (i.e., the tracks furthest from the spindle)

2. For each **cylinder**:
   - Loop through each **surface** (i.e., one per read/write head: `head 0, 1, 2, ..., N`)
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
> to minimise latency and maximise throughput.
