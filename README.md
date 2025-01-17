# Linux and Ubuntu overview and commands <!-- omit in toc -->

## Contents <!-- omit in toc -->

- [1. How to install SSH server in Ubuntu](#1-how-to-install-ssh-server-in-ubuntu)
- [2. How to install sudo](#2-how-to-install-sudo)
- [3. How to install git ftp](#3-how-to-install-git-ftp)
- [4. How to install qBitTorrent](#4-how-to-install-qbittorrent)
- [5. How to install telegram desktop](#5-how-to-install-telegram-desktop)
- [6. How to install VLC](#6-how-to-install-vlc)
- [7. How to install Python](#7-how-to-install-python)
- [8. How to install MySql Workbench (MySQL Workbench as a Snap package (sandboxed))](#8-how-to-install-mysql-workbench-mysql-workbench-as-a-snap-package-sandboxed)
- [9. How to install mono](#9-how-to-install-mono)
- [10. How can accented characters](#10-how-can-accented-characters)
- [11. Commands ubuntu](#11-commands-ubuntu)
- [12. Commands linux](#12-commands-linux)
- [13. Vi commands](#13-vi-commands)

# 1. How to install SSH server in Ubuntu

1. Open the terminal application for Ubuntu desktop.
2. For remote Ubuntu server you must use BMC or KVM or IPMI tool to get console access
3. Type `sudo apt-get install openssh-server`
4. Enable the ssh service by typing `sudo systemctl enable ssh`
5. Start the ssh service by typing `sudo systemctl start ssh`
6. Test it by login into the system using `ssh user@server-name`

- Add user (linux)
  - sudo adduser `<username>`

# 2. How to install sudo

1. apt update
2. apt-get install sudo

# 3. How to install git ftp

1. apt-get install git-ftp

# 4. How to install qBitTorrent

1. sudo apt install qbittorrent

# 5. How to install telegram desktop

1. sudo snap install telegram-desktop

# 6. How to install VLC

1. sudo snap install vlc

# 7. How to install Python

1. sudo apt-get install python 3
2. sudo apt-get install python3-pip

# 8. How to install MySql Workbench (MySQL Workbench as a Snap package (sandboxed))

1. Go to app store into ubuntu
2. Seach for mysql-workbench
3. Click on permission
4. Enable Read, add, change, or remove save password

# 9. How to install mono

https://www.edivaldobrito.com.br/como-instalar-o-mono-no-ubuntu-debian-e-derivados/
https://www.mono-project.com/download/stable/#download-lin
https://linuxize.com/post/how-to-install-mono-on-ubuntu-18-04/

# 10. How can accented characters

1. Setting
2. Region and language
3. On the Input Sources Click on "+" button
4. Choose English (United States) then English(US,alt. intl.).

# 11. Commands ubuntu

- Updates the package lists for upgrades for packages that need upgrading
  - sudo apt-get update
- Get Ubuntu/Debian version
  - lsb_release -a
  - cat /etc/issue
- Install a package
  - apt-get install `<package>`
  - apt-get -y install `<package>` # -y assume YES

# 12. Commands linux

- Get and display current user
  - id
- Get and display ip
  - ip a
- Print current working directory
  - pwd
- Create directory
  - mkdir `<directory_name>`
- Remove file
  - rm `<file_name>`
- Remove directory
  - rmdir `<directory>`
  - rm -rf `<directory>` # Force
- Rename file
  - mv `<old_file_name> <new_file_name>` # Example: mv oldfile.txt newfile.txt
- Changes the user and/or group ownership of each given file
  - chown 1000:1000 `<file>`
  - chown 1000:1000 `<path>` -R # -R --Recursive
- Who am I?
  - whoami
- List the names of the files in the current directory along with the permissions, date, time and size
  - ll
- Sets the permissions of files or directories
  - chmod +x `<filna_name>` # Example: chmod +x myfile.txt
- Get Linux distribution
  - cat /etc/os-release
- Get a list of all users
  - less /etc/passwd

# 13. Vi commands

| Command         | Purpose                                             |
| --------------- | --------------------------------------------------- |
| $ vi <filename> | Open or edit a file.                                |
| i               | Switch to Insert mode.                              |
| Esc             | Switch to Command mode.                             |
| :w              | Save and continue editing.                          |
| :wq or ZZ       | Save and quit/exit vi.                              |
| :q!             | Quit vi and do not save changes.                    |
| yy              | Yank (copy a line of text).                         |
| p               | Paste a line of yanked text below the current line. |
| o               | Open a new line under the current line.             |
| O               | Open a new line above the current line.             |
| A               | Append to the end of the line.                      |
| a               | Append after the cursor's current position.         |
| I               | Insert text at the beginning of the current line.   |
| b               | Go to the beginning of the word.                    |
| e               | Go to the end of the word.                          |
| x               | Delete a single character.                          |
| dd              | Delete an entire line.                              |
| Xdd             | Delete X number of lines.                           |
| Xyy             | Yank X number of lines.                             |
| G               | Go to the last line in a file.                      |
| XG              | Go to line X in a file.                             |
| gg              | Go to the first line in a file.                     |
| :num            | Display the current line's line number.             |
| h               | Move left one character.                            |
| j               | Move down one line.                                 |
| k               | Move up one line.                                   |
| l               | Move right one character.                           |
