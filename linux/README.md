# Linux (Ubuntu)

## Online Learning Resources
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

## Directory Hard Links
Every directory automatically has multiple hard links. The number of hard links in a directory equals:

`2 + (number of subdirectories)`
- The directory itself (.)
- Its parent directory reference (..)
- The subdirectories

## System Commands:
- uname -a
- lscpu
- lscpu -e
- free -m
- df -h
- And more!

  ## Difference Between "&&" and ";"
- `&&`: stops the execution if any command fails.
- `;`: runs all commands no matter what.
