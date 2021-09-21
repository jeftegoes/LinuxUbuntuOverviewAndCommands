# How to install SSH server in Ubuntu

1. Open the terminal application for Ubuntu desktop.
2. For remote Ubuntu server you must use BMC or KVM or IPMI tool to get console access
3. Type `sudo apt-get install openssh-server`
4. Enable the ssh service by typing `sudo systemctl enable ssh`
5. Start the ssh service by typing `sudo systemctl start ssh`
6. Test it by login into the system using `ssh user@server-name`

- Add user (linux)
  - sudo adduser `<username>`

# How to install sudo

1. apt update
2. apt-get install sudo

# How to install Python
1. sudo apt-get install python 3
2. sudo apt-get install python3-pip

# How to install MySql
1. Installing MySQL 8.0.X
   1. sudo apt update
   2. sudo apt install mysql-server
2. Configuring MySQL
   1. sudo mysql_secure_installation
3. 	Creating a Dedicated MySQL User and Granting Privileges
   1. 	sudo mysql or mysql -u root -p
   2. mysql > CREATE USER 'sa'@'localhost' IDENTIFIED BY 'PASSWORD';
   3. mysql > GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION;
   4. mysql > CREATE USER 'sa'@'%' IDENTIFIED BY 'PASSWORD';
   5. mysql > GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION;
4.  Testing MySQL
    1.  systemctl status mysql.service

# How to install MySql Workbench (MySQL Workbench as a Snap package (sandboxed))
1. Go to app store into ubuntu
2. Seach for mysql-workbench
3. Click on permission
4. Enable Read, add, change, or remove save password

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
- Remove directory
  - rmdir `<directory>`
  - rm -rf `<directory>` # Force
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
- Get Linux distribution
  - cat /etc/os-release


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