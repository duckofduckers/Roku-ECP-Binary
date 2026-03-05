# recp - Roku ECP

A lightweight bash binary to control Roku TVs over your local network.

# Features

- Interactive shell to control your Roku
- Auto-scan network for devices or enter IP manually
-Send keypresses (Home, Up, Down, Play, etc.)
- List and launch apps
- Power on/off
- Get device info
- Chain multiple commands with delays
- Remembers last used device

# Install dependencies

## Debian/Ubuntu:

```bash
sudo apt install nmap curl net-tools
```

## Arch/CachyOS/Manjaro:

```bash
sudo pacman -S nmap curl net-tools
```

## Fedora:

```bash
sudo dnf install nmap curl net-tools
```

## macOS:

```bash
brew install nmap
```

## Android (Termux):

```bash
pkg install nmap
```

# Uninstall/Install

```Install
bash <(curl -fsSL https://raw.githubusercontent.com/duckofduckers/Roku-ECP-Binary/refs/heads/main/Installer.sh)
```

```Uninstall
bash <(curl -fsSL https://raw.githubusercontent.com/duckofduckers/Roku-ECP-Binary/refs/heads/main/Uninstaller.sh)
```

# Usage

```bash
# Connect to a Roku (first time only)
recp connect

# Start interactive shell
recp

# Run a single command
recp --exec "power"
recp --exec "apps"
recp --exec "launch 12"

# Forget saved device
recp disconnect

# Show help
recp help
```

# Interactive Commands

## Command Description
- launch 12 Launch app by ID
- apps List installed apps
- active-app Show current app
- tv-info Show device info
- power Toggle power
- clear Clear screen
- help Show help
- exit() Exit
- Home Press Home button
- Up Press Up button
- Down Press Down button
- Left Press Left button
- Right Press Right button
- Select Press Select/OK button
- Play Press Play button
- Rev Press Rewind button
- Fwd Press Fast Forward button

# Multiple Commands

- Separate with / and use *delay* to wait:

```bash
Home/Select/Play
*2*/Home/*1.5*/Select
```

# Files

~/.recp-history – Stores last used device IP

# Requirements

- nmap
- curl
- awk
- sed
- grep
- ifconfig

# Compatibility OS Status

- Linux ✅ Full
- macOS ✅ Full
- Android (Termux) ✅ Full
- WSL1 ✅ Full
- WSL2 ⚠️ Manual IP only

# License

MIT
