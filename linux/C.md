# Compile and Run a C Program

This tutorial teaches students how to **compile and run a simple C program using `gcc`**.

The instructions work on:

- Linux (Ubuntu / Debian)
- macOS
- WSL on Windows

---

## 1. Check if GCC is Installed

First check whether the C compiler (`gcc`) is installed.

```bash
gcc --version
```

Example output:

```
gcc (Ubuntu 11.4.0) 11.4.0
```

If a version number appears, you are ready to go.

---

## 2. Install GCC (if needed)

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install build-essential
```

This installs:

- gcc
- g++
- make
- standard C libraries

---

### macOS

Install Xcode Command Line Tools:

```bash
xcode-select --install
```

---

## 3. Write a C Program

Create a file named:

```
hello.c
```

Example program:

```c
#include <stdio.h>

int main() {

    printf("Hello, World!\n");

    return 0;
}
```

---

## 4. Compile the Program

Use `gcc` to compile the C source code.

```bash
gcc hello.c
```

This command produces an executable file called:

```
a.out
```

---

## 5. Run the Program

Execute the program with:

```bash
./a.out
```

Output:

```
Hello, World!
```

---

## 6. Give the Executable a Name

Instead of `a.out`, we usually give the program a meaningful name.

Compile with:

```bash
gcc hello.c -o hello
```

Now the executable file is:

```
hello
```

Run it:

```bash
./hello
```

Output:

```
Hello, World!
```

---

## 7. Recommended Compilation Flags

Enable compiler warnings:

```bash
gcc -Wall hello.c -o hello
```

`-Wall` tells the compiler to display useful warnings that may help detect bugs.

---

## 8. Example Workflow

Typical programming workflow:

```
write code → compile → run → debug → repeat
```

Example:

```bash
gcc -Wall hello.c -o hello
./hello
```

---

## Summary

| Step | Command |
|-----|------|
| Compile | `gcc hello.c` |
| Compile with name | `gcc hello.c -o hello` |
| Run program | `./hello` |
