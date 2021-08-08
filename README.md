# jalovisko-dotfiles
Here lie the configs for the [i3](https://github.com/i3/i3) window manager I made. This is mostly a collection of various stuff I was able to find online packed together + a few modifications of mine.
![image](https://user-images.githubusercontent.com/22379984/126691068-d14630b7-9d66-4e78-adbd-a554d7d03d0a.png)
^ On screen: [gotop](https://github.com/cjbassi/gotop), [neofetch](https://github.com/dylanaraps/neofetch.git), [peaclock](https://github.com/octobanana/peaclock).


## Pacman dependencies
Dependencies from ArchLinux's Pacman:
```bash
sudo pacman -S feh compton dunst i3blocks kitty rofi pulseaudio ttf-font-awesome pacaur flameshot gnome-keyring imagemagick gawk util-linux wmctrl scrot 	zathura zathura-pdf-mupdf
```
## AUR dependencies
Dependencies from [AUR](https://aur.archlinux.org/), requires [Yay](https://github.com/Jguer/yay) to be installed:
```bash
yay -S i3-gaps-rounded-git google-chrome polybar pulseaudio-control consolas-font ttf-material-icons-git picom-git pacaur libinput-gestures i3lock-color-git i3lock-fancy-multimonitor
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

You may need to do some extra steps to make `i3lock-fancy-multimonitor` to
work, namely this:
```bash
chmod +x ~/.config/i3/lock
```
See [here](https://github.com/guimeira/i3lock-fancy-multimonitor) for more if
it doesn't work.
