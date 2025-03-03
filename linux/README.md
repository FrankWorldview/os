Online Learning Resources:
- [Linux Journey](https://linuxjourney.com/)
- [Unix / Linux for Beginners](https://www.tutorialspoint.com/unix/index.htm)
- [鳥哥私房菜](https://linux.vbird.org/)

Package Managment:
`sudo apt update && sudo apt upgrade -y && sudo apt autoclean && sudo apt autoremove -y && sudo snap refresh`
- sudo apt update → Refreshes the package lists from repositories.-
- sudo apt upgrade -y → Installs all available package upgrades (-y automatically confirms).
- sudo apt autoclean → Removes outdated package files from the cache.
- sudo apt autoremove -y → Removes unused dependencies (-y automatically confirms).
- sudo snap refresh → Updates all installed Snap packages.

If you want a full upgrade, replacing upgrade with full-upgrade will also install kernel updates and handle dependencies better:
`sudo apt update && sudo apt full-upgrade -y && sudo apt autoclean && sudo apt autoremove -y && sudo snap refresh`

Directory Hard Links
Every directory automatically has multiple hard links. The number of hard links in a directory equals:
`2 + (number of subdirectories)`
- The directory itself (.)
- Its parent directory reference (..)
- The subdirectories

Some system commands:
- uname -a
- lscpu
- lscpu -e
- free -m
- df -h

