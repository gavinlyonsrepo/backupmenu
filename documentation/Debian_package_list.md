Package Lists  Debian
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
