- Increase video RAM; choose "NAT" or "Bridged networking"; choose USB 3.0.

- See [Virtual Networking](https://www.virtualbox.org/manual/ch06.html) for VirtualBox networking modes.

- `update-manager &` then reboot

- Change the setting of Software Updater: "Display immediately"

- Optional step: `sudo apt update && sudo apt upgrade -y && sudo apt autoclean && sudo apt autoremove -y && sudo snap refresh`

- `sudo apt update && sudo apt upgrade` # Every time before installing new packages

- `sudo apt install bzip2`

- 裝置 -> 插入 Guest Additions CD 映像 -> reboot (Devices -> Insert Guest Additions CD Image -> reboot)

- Unmount and eject CD.

- 裝置 -> 共用剪貼簿 -> 雙向 (Devices -> Shared Clipboard -> Bidirectional)

- Settings -> Power -> Power Saving -> Screen Blank -> Never

- Traditional Chinese imput methods (Chewing): [Reference](https://ivonblog.com/posts/ubuntu-fcitx5/)
  - `sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-chewing`
  - `im-config`
  - `reboot`
  - Config fcitx5: Uncheck "Only Show Current Language" and add new input methods (e.g., Chewing).

- `sudo apt update && sudo apt upgrade` # Every time before installing new packages

- `sudo apt install libreoffice` # If you need LibreOffice
 
- Edit .nanorc: `set tabsize 4`
