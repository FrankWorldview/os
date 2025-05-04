# How to Compile and Run the Dining Philosophers Java Demo

This guide will help you set up your environment and run the three Dining Philosophers solutions implemented in Java.

---

## ✅ Step 1: Install the JDK

Download and install the latest Long-Term Support (LTS) version of the Java Development Kit (JDK):

- [Adoptium Temurin (Recommended)](https://adoptium.net/)
- [Microsoft Build of OpenJDK](https://learn.microsoft.com/en-us/java/openjdk/download)

After installation, verify it works:

```bash
java -version
javac -version

## ✅ Step 2: Install Visual Studio Code and Java Extensions

1. Download and install **Visual Studio Code** from the official website:

   👉 [https://code.visualstudio.com/](https://code.visualstudio.com/)

2. Launch VS Code, then install the **Java Extension Pack** by Microsoft.  
   This includes:

   - Language Support for Java™ by Red Hat
   - Debugger for Java
   - Java Test Runner
   - Maven for Java
   - Visual Studio IntelliCode

3. You can now open a folder containing your `.java` file and use features like:

   - IntelliSense (auto-completion)
   - Debugging (F5)
   - Integrated Terminal
   - Syntax highlighting


## ✅ Step 3: Save and Compile the Java File

1. Save your source code file as: DiningPhilosophersDemo.java

2. Open your terminal or command prompt, navigate to the folder containing the file, and run:

```bash
javac DiningPhilosophersDemo.java
