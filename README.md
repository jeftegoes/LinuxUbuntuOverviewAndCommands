# How to install SSH server in Ubuntu

## The procedure to install a ssh server in Ubuntu Linux is as follows:
1. Open the terminal application for Ubuntu desktop.
2. For remote Ubuntu server you must use BMC or KVM or IPMI tool to get console access
3. Type `sudo apt-get install openssh-server`
4. Enable the ssh service by typing `sudo systemctl enable ssh`
5. Start the ssh service by typing `sudo systemctl start ssh`
6. Test it by login into the system using `ssh user@server-name`

- Add user (linux)
  - sudo adduser `<username>`

# Commands ubuntu
- Updates the package lists for upgrades for packages that need upgrading
  - sudo apt-get update
- Get Ubuntu version
  - lsb_release -a

# Commands linux
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
- Rename file
  - mv `<old_file_name> <new_file_name>` # Example: mv oldfile.txt newfile.txt
- Changes the user and/or group ownership of each given file
  - chown 1000:1000 `<path>` -R # -R --Recursive
- Who am I?
  - whoami
- List the names of the files in the current directory along with the permissions, date, time and size
  - ll
- Sets the permissions of files or directories
  - chmod +x `<filna_name>` # Example: chmod +x myfile.txt


# Vi commands

| Command         | Purpose                                             |
|-----------------|-----------------------------------------------------|
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