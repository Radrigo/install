#!/usr/bin/env bash


sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool libxcb-shape0-dev make git lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings libxcb-xrm-dev apt-listchanges autocutsel bash-completion bc btrfs-progs cmatrix cryptsetup ctags curl deluge deluge-gtk dia doc-debian dunst evince feh sxiv freerdp2-x11 gimp git remmina htop i3lock i3status imagemagick jq lm-sensors lxappearance lxterminal macchanger mpg123 mpv mutt mycli pass powertop pcmanfm privoxy proxychains proxychains4 pry pwgen ranger ruby scrot speedcrunch telegram-desktop tmux tor traceroute vim vlc wget xautolock xcompmgr xterm xsel zenity zsh zsh-syntax-highlighting ipcalc strace inotify-tools virtualbox dnsmasq bridge-utils p7zip-full python3-pip xfonts-terminus brightnessctl brasero firefox flameshot pulseaudio pavucontrol

# INSTALL I3-GAPS WM
cd /tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
