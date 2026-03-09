- Increase video RAM; choose "NAT" or "Bridged networking"; choose USB 3.0. See [Chapter 6. Virtual Networking](https://www.virtualbox.org/manual/ch06.html) for VirtualBox networking modes.

- `update-manager &` then reboot

- Change the setting of Software Updater: "Display immediately"

- Optional step: `sudo apt update && sudo apt upgrade -y && sudo apt autoclean && sudo apt autoremove -y && sudo snap refresh`

- `sudo apt update && sudo apt upgrade`

- `sudo apt install bzip2`

- 裝置 -> 插入 Guest Additions CD 映像 -> reboot (Devices -> Insert Guest Additions CD Image -> reboot)

- 檢視 -> 調整視窗大小 (View -> Adjust Window Size)

- 裝置 -> 共用剪貼簿 -> 雙向 (Devices -> Shared Clipboard -> Bidirectional)

- Settings -> Power -> Power Saving -> Screen Blank -> Never

- Traditional Chinese imput methods (Chewing): [Reference](https://ivonblog.com/posts/ubuntu-fcitx5/)
  - `sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-chewing`
  - `im-config`
  - `reboot`
  - Config fcitx5

- Edit .nanorc: `set tabsize 4`
