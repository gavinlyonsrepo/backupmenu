
Overview
--------------------------------------------
* Name: backupmenu
* Title : Backup Menu TUI
* Description: Backup menu TUI for Debian based Linux distributions using 
dd, cp, Tar and rsync. Written in bash, CLI program.
* Author : Gavin Lyons

Table of contents
---------------------------

  * [Overview](#overview)
  * [Table of contents](#table-of-contents)
  * [Installation](#installation)
  * [Usage](#usage)
  * [Files and setup](#files-and-setup)
  * [Dependencies](#dependencies)
  * [Features](#features)
  * [Communication](#communication)
  * [History](#history)
  * [Copyright](#copyright)


Installation
-----------------------------------------------

Two methods.

1.   Install by PPA

A Personal Package Archives (PPA) has been created on Ubuntu
package building and hosting section of launchpad site 
called backupmenu. Package built on Ubuntu 18.04 LTS (Bionic Beaver) 64bit 

To install this on your system run commands in terminal

```sh
sudo add-apt-repository ppa:typematrix/backupmenu
sudo apt update
sudo apt install backupmenu
```

**OR** 

2. Install by makefile

Download latest fixed release and run the makefile as per 
terminal commands below for version 2.0 latest release at time of writing.
The disadvantage of this method is you will not be informed of any updates.

```sh
curl -sL https://github.com/gavinlyonsrepo/backupmenu/archive/2.0.tar.gz | tar xz
cd backupmenu-2.0
sudo make install
```

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
| $HOME/.config/backupmenu/backupmenu.cfg  | config file(must be created) | 

Config file: The user must create the config file.
"DESTX" is the path for backups.(where X is 1 , 2 ,3 )
"rsyncsource" and "rsyncdest" provide the source and destination paths 
for rsync option in backup menu.
The config file can be edited from a main menu option.

backupmenu.cfg file setup example:
Just copy and paste this into file and change paths for your setup.
alternatively a config file template with dummy values 
is in documentation folder of the repository.

> DEST1="/run/media/$USER/Linux_backup/"
>
> DEST2="/run/media/$USER/iomega_320/"
>
> DEST3="/tmp/"
>
> rsyncsource="$HOME/"
>
> rsyncDest="/run/media/$USER/Linux_backup/foo"
>

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

| Index | Contents | Filename |
| -------- | -------- | ----- |
| 1 | All installed | All_PKG |
| 2 | All native, explicitly installed | Exp_PKG |
| 3 | List orphaned packages  | noinstall_PKG |
| 4 | Get a dump of the whole system information | stats_PKG |
| 5 | List packages that were recently added to one of the installation sources | Recent_add_PKG |
| 6 | List packages not required by any other package | non-Dep_PKG |
| 7 | List packages installed automatically (as dependencies) | auto_Dep_PKG |
| 8 | Prints a list of all installation source |  Info_Source_PKG|
| 9 | List of non-standard repositories in use | non_standard_PKG |
| 10 | List Installed packages by size | install_size_PKG |
| 11 | List packages by install date  | Install_date_1_PKG |
| 12 | List packages by install date less data | Install_date_2_PKG |

Commands used by index number in table:
----------------------
1. dpkg --list | grep ^i 
2. apt-mark showmanual
3.  deborphan 
4.  apt-cache stats 
5.  aptitude search '~N' 
6.  deborphan -anp1 
7.  apt-mark showauto 
8.  apt-cache policy 
9.  cat /etc/apt/sources.list.d/*.list | grep -v "^#" 
10.  aptitude search "~i" --display-format "%p %I" --sort installsize 
11.  grep installed /var/log/dpkg.log 
12.  grep " install " /var/log/dpkg.log 


Communication
-----------
If you should find a bug or you have any other query, 
please send a report.
Pull requests, suggestions for improvements
and new features welcome.
* Contact: Upstream repo at github site below or glyons66@hotmail.com
* Upstream repository: https://github.com/gavinlyonsrepo/backupmenu

History
------------------

* See changelog.md in documentation section for version control history

 
Copyright
---------
Copyright (C) 2018  Gavin Lyons, See LICENSE.md in documentation section 
for more details.
