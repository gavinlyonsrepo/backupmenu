
Overview
--------------------------------------------
* Name: backupmenu
* Title : Backup Menu TUI
* Description: Backup menu TUI for Linux distributions using 
dd, cp, Tar and rsync. Written in bash, CLI program.


Table of contents
---------------------------

  * [Overview](#overview)
  * [Table of contents](#table-of-contents)
  * [Installation](#installation)
  * [Dependencies](#dependencies)
  * [Usage](#usage)
  * [Files and setup](#files-and-setup)
  * [Features](#features)

Installation
-----------------------------------------------

Two methods.

**Linux debian based systems built on Ubuntu 20.04 LTS (Focal Fossa)**

A Personal Package Archives (PPA) has been created on Ubuntu
package building and hosting section of launchpad site 
called backupmenu. Package built on Ubuntu 20.04 LTS (Focal Fossa) 64bit 

To install this on your system run commands in terminal

```sh
sudo add-apt-repository ppa:typematrix/backupmenu
sudo apt update
sudo apt install backupmenu
```

**Arch based System** 

Package available in the Arch Linux user repo AUR.

**For other linux systems**

Download latest fixed release and run the makefile as per 
terminal commands below for version 2.2 latest release at time of writing.
The disadvantage of this method is you will not be informed of any updates.

```sh
curl -sL https://github.com/gavinlyonsrepo/backupmenu/archive/2.2.tar.gz | tar xz
cd backupmenu-2.2
sudo make install
```


Dependencies
-------------------------------------

Install dependency bashMultiTool, requires a bash library (Also written by author)

[bashmultitool](https://github.com/gavinlyonsrepo/bashmultitool)

Usage
-------------------------------------------

type in terminal:

```sh
backupmenu
```

Type "backupmenu" in a terminal to run or select the icon.
The program installs an icon in system application menus under system.

![icon](https://raw.githubusercontent.com/gavinlyonsrepo/backupmenu/master/desktop/backupmenuicon.png)


Files and setup
-----------------------------------------

| File  | Description |
| ------ | ------ |
| /usr/bin/backupmenu | The main shell script | 
| /usr/lib/backupmenu/modules/* | 2 Module files containing functions |
| /usr/share/doc/backupmenu/README.md | Help file |
| /usr/share/doc/copyright | copyright file |
| /usr/share/pixmaps/backupmenuicon.png | program icon |
| /usr/share/applications/backupmenu.desktop | desktop entry file |
| $HOME/.config/backupmenu/backupmenu.cfg  | config file(must be user created) | 

Config file: The user MUST create the config file.
"DESTX" is the path for backups.(where X is 1 , 2 ,3 )
"rsyncsource" and "rsyncdest" provide the source and destination paths 
for rsync option in backup menu.
The config file can be edited from a main menu option.
backupmenu.cfg file setup example in documentation folder.


EDITOR
"nano" is used as default text editor for editing config files 
IF $EDITOR user environment variable is not set. 
```sh
$EDITOR
```

Features
----------------------

* System backup 
	
	1. Destination path as defined in config file or custom path
	2. Make copy of MBR or GPT primary partition with dd
	3. Make a copy of etc dir using cp
	4. Make a copy of home dir using cp
	5. Make copy of package lists.(see below)
	6. Make tarball of entire file system except tmp dev proc sys run
	7. Options 2-6 combined
	8. Custom Source directory for tarball
	9. Rsync backup option selected from main menu


Package Lists
----------------------

Package list backups are available for Debian or Arch based Distros,
see md files in documentation folder for more details.

1. Arch_package_list.md  
2. Debian_package_list.md
