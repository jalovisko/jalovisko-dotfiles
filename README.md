# jalovisko-dotfiles
Here lie the configs for the [i3](https://github.com/i3/i3) window manager I made. This is mostly a collection of various stuff I was able to find online packed together + a few modifications of mine.
![2021-08-07_14-44](https://user-images.githubusercontent.com/22379984/128611481-721573c0-18fa-4c94-b323-a96abe11fbaf.png)
![2021-08-07_14-47](https://user-images.githubusercontent.com/22379984/128611487-2cbf8bf3-e19a-49b5-ab6f-8a5b7f54783e.png)
^ On screen: [gotop](https://github.com/cjbassi/gotop), [neofetch](https://github.com/dylanaraps/neofetch.git), [peaclock](https://github.com/octobanana/peaclock).
![2021-08-07_15-00](https://user-images.githubusercontent.com/22379984/128611497-d4ccf8b8-f052-4d9b-898b-85befc037154.png)
^ On screen: [ranger](https://github.com/ranger/ranger) and a picture of [SHODAN](https://en.wikipedia.org/wiki/SHODAN) opened with [feh](https://github.com/derf/feh)
![2021-08-07_15-19](https://user-images.githubusercontent.com/22379984/128611700-154b607c-4b1e-461d-b9d8-7349da15f9c1.png)
^ On screen: [Vim](https://github.com/vim/vim)
![lock](https://user-images.githubusercontent.com/22379984/128611715-96af809b-00e0-478e-8af8-45d673c137ca.png)
^ On screen: [i3lock-fancy-multimonitor](https://github.com/guimeira/i3lock-fancy-multimonitor)

## Pacman dependencies
Dependencies from ArchLinux's Pacman:
```bash
sudo pacman -S feh compton dunst i3blocks kitty rofi pulseaudio ttf-font-awesome pacaur flameshot gnome-keyring imagemagick gawk util-linux wmctrl scrot
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
