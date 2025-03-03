Install C:\Program Files\Oracle\VirtualBox\drivers\vboxsup\VBoxSup.inf

0. 128 MB video RAM & Bridged networking & USB 3.0

1. update-manager & ==> reboot

2. Change the setting of Software Updater: Display immediately

3.
sudo apt update && sudo apt upgrade -y && sudo apt autoclean && sudo apt autoremove -y && sudo snap refresh

4.
sudo apt install bzip2

5. 裝置 -> 插入 Guest Additions CD 映像 -> reboot

6. 檢視 -> 調整視窗大小

7. 裝置 -> 共用剪貼簿 -> 雙向

8. Settings -> Power -> Power Saving -> Screen Blank -> Never

9.
https://ivonblog.com/posts/ubuntu-fcitx5/

#### sudo apt purge --auto-remove ibus-chewing

sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-chewing
im-config
reboot
設定 fcitx5

10. edit .nanorc
set tabsize 4
