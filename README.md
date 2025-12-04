Prebuilt DWL Setup

This repository contains my pre-configured DWL environment for Arch Linux.
It includes a custom control panel, themed components, and integrations for Wi-Fi, audio, Bluetooth, screenshots, notifications, and more.

Getting Started:

Copy everything inside the JT folder into your home directory.
This is required for:

The custom control panel (SUPER + W)

Wallpaper loading

Connection panel functionality

You must use my pre-built DWL for this setup to work as intended.

Launch DWL from a TTY using:

dwl -s slstatus


This enables the bar with time, CPU, and RAM info.

Requirements

This setup was designed for Arch Linux using:

PipeWire

NetworkManager

BlueZ

Dependencies
pixman
xdg-desktop-portal-gtk
polkit-gnome
tllist
fcft
kitty
firejail + qutebrowser   (SUPER + B launches Qutebrowser sandboxed)
rofi                     (app launcher)
wbg                      (AUR: yay -S wbg)
nemo                     (file manager) — SUPER + P
wlroots 0.19
wayland-protocols
mako                     (notification manager)
fish (optional)          — chsh -s /usr/bin/fish
python3
gtk3
gtk4
gtk-layer-shell          (for WiFi/Bluetooth/Audio panel)
speedtest-cli
bluez
bluez-utils
ttf-dejavu               (font for status bar)


Also required:

slstatus — build and install it for bar info (time, CPU, RAM)

grim + slurp — screenshot support
(Copy JT files into your home directory for this to work.)
Shortcut: Caps Lock ON + SUPER + G

Configuration

Copy the folders inside CONFIG to your ~/.config directory
(themes for Mako, Rofi, etc.)

A fastfetch configuration will be added soon.

Fish shell users: copy over the provided fish config for styled folder icons.

Notes & Features

Fully supports the hardened Linux kernel.
Check custom keybinds inside config.h in the dwl directory.

Window closing is intentionally safe:

Enable Caps Lock

Hover the window with the mouse

Press SUPER + SHIFT + Q

This prevents accidental window closure.

Some minor keybind warnings appear during compilation — these are normal.
If you want to enable one of the optional features, find it in config.def.h.

Maintenance

I maintain this setup for my personal daily use, so it will continue to be updated and improved over time.
I don’t use a login manager (TTY enjoyer), but if you want to use one, adding a desktop entry should make it work.
             

            
             
            
             
