# jalovisko-dotfiles
Here lie the configs for the [i3](https://github.com/i3/i3) window manager I made. This is mostly a collection of various stuff I was able to collect online from other people's configs.
![image](https://user-images.githubusercontent.com/22379984/124523134-bcc01c00-ddc3-11eb-84c8-5332261054f7.png)
^ On screen: [gotop](https://github.com/cjbassi/gotop), [neofetch](https://github.com/dylanaraps/neofetch.git).


## Pacman dependencies
Dependencies from ArchLinux's Pacman:
```bash
sudo pacman -S i3-wm feh compton dunst i3-gaps i3blocks kitty rofi pulseaudio ttf-font-awesome pacaur flameshot
```
## AUR dependencies
Dependencies from [AUR](https://aur.archlinux.org/), requires [Yay](https://github.com/Jguer/yay) to be installed:
```bash
yay -S google-chrome polybar pulseaudio-control consolas-font ttf-material-icons-git picom-git pacaur libinput-gestures
```
Also, a few more packages from AUR but installed with Pacaur (installed in the previous section via Pacman). This is because there is a bug in Yay that prevents some Razer-specific drivers to be installed.
```
pacaur -S openrazer-meta polychromatic openrazer-daemon openrazer-driver-dkms
```

## Finalizing
Add the user to the `input` group (to allow gestures when using a laptop):
```bash
sudo gpasswd -a $USER input
```


