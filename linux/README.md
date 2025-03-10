# Linux (Ubuntu)

## Online Learning Resources
- [The Linux Command Line (by William Shotts)](https://linuxcommand.org/)
- [Linux Journey](https://linuxjourney.com/)
- [Unix / Linux for Beginners](https://www.tutorialspoint.com/unix/index.htm)
- [鳥哥私房菜](https://linux.vbird.org/)

## Package Managment
### Update Packages
`sudo apt update && sudo apt upgrade -y && sudo apt autoclean && sudo apt autoremove -y && sudo snap refresh`
- sudo apt update → Refreshes the package lists from repositories.-
- sudo apt upgrade -y → Installs all available package upgrades (-y automatically confirms).
- sudo apt autoclean → Removes outdated package files from the cache.
- sudo apt autoremove -y → Removes unused dependencies (-y automatically confirms).
- sudo snap refresh → Updates all installed Snap packages.

If you want a full upgrade, replacing upgrade with full-upgrade will also install kernel updates and handle dependencies better:

`sudo apt update && sudo apt full-upgrade -y && sudo apt autoclean && sudo apt autoremove -y && sudo snap refresh`

### Install a Package
`sudo apt install <package-name>`

### Query a Package
- Check if a package is installed: `dpkg -l | grep <package-name>` or `apt list --installed | grep <package-name>`

- Get detailed information about an installed package: `dpkg -s <package-name>`

- Find where a package's files are installed: `dpkg -L <package-name>`

- Query a package that is not installed: `apt show <package-name>`

### Delete a Package
Remove a package but keep its configuration files:

`sudo apt remove <package-name>`

Fully remove a package and its dependencies, and clear APT cache:

`sudo apt purge --auto-remove <packagename> && sudo apt clean`

## Shortcuts
- ".": working directory itself
- "..": working directory's parent directory
- "~": home directory
- "~user_name": home directory of the specified user
- "-": previous directory

## Directory Hard Links
Every directory automatically has multiple hard links. The number of hard links in a directory equals:

`2 + (number of subdirectories)`
- The directory itself (.)
- Its parent directory reference (..)
- The subdirectories

## System Commands:
- `uname -a` - print system information
- `lscpu` - display information about the CPU architecture
- `lscpu -e` - display the CPU information in human-readable format
- `free -m` - display amount of free and used memory in the system
- `df -h` - report file system space usage

## Difference Between "&&" and ";"
- `&&`: stops the execution if any command fails.
- `;`: runs all commands no matter what.

## Common umask Values and Their Effects
umask (short for user file-creation mode mask) is a command that determines the default permissions for newly created files and directories. When you create a file or directory, the system applies a default permission but subtracts the value of umask.

`Final Permission = Default Permission - umask`

| umask	| File Default (666 - umask) | Directory Default (777 - umask) | Effect |
| ----- | -------------------------- | ------------------------------- |------- |
| 0000 | 666 (rw-rw-rw-) | 777 (rwxrwxrwx) | Fully open access (not recommended) |
| 0022 | 644 (rw-r--r--) | 755 (rwxr-xr-x) | Default for most Linux systems |
| 0077 | 600 (rw-------) | 700 (rwx------) | Private (only owner has access) |
| 0027 | 640 (rw-r-----) | 750 (rwxr-x---) | Group access, others denied |
