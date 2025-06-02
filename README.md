# Config
These are my configuration files for my Linux setup.
### NOTE
* All configurations are customized for me and my use cases, so it can be useful for someone who needs a minimal setup based on [i3](https://i3wm.org/) or [Hyprland](https://hyprland.org/).
* The installation script and inherent scripts are designed to be applied to my system file structure and what I need from this software to do, so it is sometimes not set well for your machine, it works fine all the time for me(you can configure it manually without scripts)
* This setup is mainly for [Arch Linux](https://archlinux.org/), but you can change the package manager in scripts and it works 90% for all Unix systems.
## Setup form
It is based on mainly Five workspaces can be more but in a small amount of time.

Browser | Terminal (tmux 3 sessions) | Development | Notes (latex) | Media (media tools)
## Installation
* After running install.sh the scripts start to install all needed software or system software from [Pacman](https://wiki.archlinux.org/title/Pacman) or [AUR](https://wiki.archlinux.org/title/Arch_User_Repository) or from the source code like [Suckless](https://suckless.org/) programs
```bash
{
chmod +x install.sh
./install.sh
}
```
* The configuration files are managed by [GNU Stow](https://www.gnu.org/software/stow/) which is a symlink manager that manages all files from the repo and it sets all true locations for them.
