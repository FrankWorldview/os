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

### Delete a Package
If you want to remove the package but keep its configuration files, use:
`sudo apt remove <package-name>`

sudo apt purge --auto-remove <packagename>

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
