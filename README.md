# GNUSim8085 Dark Edition 🌙⚡

![Dark Theme](https://img.shields.io/badge/Theme-Dark%20Mode-1e1e2e?style=for-the-badge&logo=gtk&logoColor=89b4fa)
![License](https://img.shields.io/badge/License-GPL%20v2-blue.svg?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20GTK3-0078D6?style=for-the-badge&logo=windows)
![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg?style=for-the-badge)

**GNUSim8085 Dark Edition** is an enhanced, dark-themed release of the popular open-source GNUSim8085 Intel 8085 microprocessor simulator. Built for students, engineers, and assembly programmers who want a modern, eye-friendly dark interface, modern syntax highlighting, Full Screen mode, and a top-level Settings Control Dashboard.

---

## ✨ Features

- 🌙 **Full GTK3 Dark Engine**: Styled using Catppuccin Dark palette (`#1e1e2e`), deep dark panels, dark toolbars, dark menus, dark register views, and sleek dark dialogs.
- ⚡ **Dark Assembly Code Editor**: Customized GtkSourceView syntax color palette (`classic.xml` & `dark.xml`) with vibrant opcode highlights for mnemonics (`MOV`, `MVI`, `LXI`), registers (`A`, `B`, `C`, `PSW`), numbers (`4200H`), and comments.
- 🎛️ **Top Settings Option Tile (`Settings.html`)**: A visual glassmorphic dashboard situated right at the top of the folder to easily switch themes, set editor font sizes, toggle line numbers, and customize starting execution addresses.
- 📺 **Full Screen / Maximized Mode**: Dedicated launch option (`Launch_FullScreen.bat` / `--fullscreen` flag) to maximize your workspace for coding long 8085 assembly programs.
- 📚 **Searchable 8085 Opcode Reference**: Built-in interactive instruction lookup table with byte counts, operations, and descriptions directly inside the Settings tile.
- 📦 **100% Portable & Zero-Config**: Runs out of the box on Windows with bundled GTK3 libraries.

---

## 🚀 Quick Start & Launch Instructions

### 1. Launch Dark Mode Simulator
Double-click `gnusim8085.bat` or run:
```cmd
gnusim8085.bat
```

### 2. Launch in Full Screen Mode
Double-click `Launch_FullScreen.bat` or run:
```cmd
gnusim8085.bat --fullscreen
```

### 3. Open Settings Tile & Dashboard
Double-click `00_SETTINGS_TILE.bat` or open `Settings.html` in any web browser to access the control tile.

---

## 💻 Sample 8085 Assembly Code

Try running this simple 8085 program to test addition and register operations:

```assembly
; GNUSim8085 Sample Program: Add Two 8-bit Numbers
MVI A, 05H    ; Load 05H into Accumulator A
MVI B, 03H    ; Load 03H into Register B
ADD B         ; Add contents of B to Accumulator (A = A + B)
STA 4200H     ; Store result at memory location 4200H
HLT           ; Halt execution
```

---

## 📂 Project Directory Structure

```text
dark theme gnusim/
├── 00_SETTINGS_TILE.bat    # Interactive top-level CLI Settings Tile
├── Settings.html           # Glassmorphic Visual Settings Dashboard
├── Launch_FullScreen.bat   # Direct Full Screen Dark Mode Launcher
├── gnusim8085.bat          # Main launcher script with dark theme environment
├── README.md               # Documentation and GitHub Guide
├── bin/                    # GNUSim8085 binary & GTK3 runtime DLLs
├── data/                   # Language definitions & dark syntax XML schemes
├── etc/gtk-3.0/            # GTK3 dark settings.ini and dark gtk.css
└── share/                  # GTK3 icons, locales, and schemas
```

---

## 🛠️ Configuration & Themes

You can customize themes and GTK preferences in `etc/gtk-3.0/settings.ini`:

```ini
[Settings]
gtk-application-prefer-dark-theme = 1
gtk-theme-name = Adwaita-dark
```

Custom GTK CSS overrides are located at `etc/gtk-3.0/gtk.css`.

---

## 📜 License

This project is licensed under the **GNU General Public License v2.0 (GPL-2.0)** - matching the original open-source GNUSim8085 distribution.

---

## 🤝 Contributing

Contributions, bug reports, and suggestions are welcome! Feel free to open an issue or submit a pull request on GitHub.
