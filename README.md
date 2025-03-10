# Ubuntu Login Background Changer

A simple script to change the GDM (GNOME Display Manager) login background on Ubuntu-based systems.

## Features

- Lets you select a custom image via a GUI file picker (using **Zenity**) or via manual path input if Zenity is not installed.
- Backs up the original GDM theme file before modifying it.
- Prevents duplicate background entries in the CSS file by removing prior references.
- Allows easy revert by restoring the backup file.

## Requirements

- **Ubuntu or Debian-based distro** with GNOME Display Manager (gdm3) or a similar GDM-based environment.
- **Root privileges** (run as `sudo`).
- [Optional] **Zenity** for graphical file selection dialog (`sudo apt install zenity`).

> **Important**: The exact location of the GDM CSS file may vary by distro. Common paths:
> - `/usr/share/gnome-shell/theme/gdm3.css`
> - `/usr/share/gnome-shell/theme/ubuntu.css`
> - `/etc/alternatives/gdm3.css` (older versions)

## Installation

1. Clone or download this repository:
   ```bash
   git clone https://github.com/yourusername/your-project.git
