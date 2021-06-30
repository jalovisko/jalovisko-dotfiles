# jalovisko-dotfiles

## Arch dependencies
Dependencies from ArchLinux's Pacman:
```
sudo pacman -S i3-wm feh compton dunst i3-gaps i3blocks kitty rofi pilseaudio ttf-font-awesome pacaur
```
## AUR dependencies
Dependencies from [AUR](https://aur.archlinux.org/), requires [Yay](https://github.com/Jguer/yay) to be installed:
```
yay -S google-chrome polybar pulseaudio-control consolas-font ttf-material-icons-git picom-git pacaur
```
Also, a few more packages from AUR but installed with Pacaur (installed in the previous section via Pacman). This is because there is a bug in Yay that prevents some Razer-specific drivers to be installed.
```
pacaur -S openrazer-meta polychromatic openrazer-daeomon openrazer-driver-dkms
```
