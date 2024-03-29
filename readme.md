# tar custom rpm with zstd compression support

* CentOS 6 & 7 64bit Only
* latest tar version with zstd compression support from [https://git.savannah.gnu.org/cgit/tar.git](https://git.savannah.gnu.org/cgit/tar.git)

```
 Compression options:

  -a, --auto-compress        use archive suffix to determine the compression
                             program
  -I, --use-compress-program=PROG
                             filter through PROG (must accept -d)
  -j, --bzip2                filter the archive through bzip2
  -J, --xz                   filter the archive through xz
      --lzip                 filter the archive through lzip
      --lzma                 filter the archive through lzma
      --lzop                 filter the archive through lzop
      --no-auto-compress     do not use archive suffix to determine the
                             compression program
  -z, --gzip, --gunzip, --ungzip   filter the archive through gzip
      --zstd                 filter the archive through zstd
  -Z, --compress, --uncompress   filter the archive through compress
```

# tar zstd compression benchmarks

![](/screenshots/tar-zstd-table-03.png)

![](/screenshots/tar-zstd-chart-03b.png)

# Install

On Centmin Mod 123.09beta01 or higher LEMP stack installs with CentOS 7.x 64bit first run centmin.sh menu option 17 to install multi-threaded compression tools including Facebook zstd compression tool.

```
--------------------------------------------------------
     Centmin Mod Menu 123.09beta01 centminmod.com     
--------------------------------------------------------
1).  Centmin Install
2).  Add Nginx vhost domain
3).  NSD setup domain name DNS
4).  Nginx Upgrade / Downgrade
5).  PHP Upgrade / Downgrade
6).  XCache Re-install
7).  APC Cache Re-install
8).  XCache Install
9).  APC Cache Install
10). Memcached Server Re-install
11). MariaDB MySQL Upgrade & Management
12). Zend OpCache Install/Re-install
13). Install/Reinstall Redis PHP Extension
14). SELinux disable
15). Install/Reinstall ImagicK PHP Extension
16). Change SSHD Port Number
17). Multi-thread compression: pigz,pbzip2,lbzip2...
18). Suhosin PHP Extension install
19). Install FFMPEG and FFMPEG PHP Extension
20). NSD Install/Re-Install
21). Update - Nginx + PHP-FPM + Siege
22). Add Wordpress Nginx vhost + Cache Plugin
23). Update Centmin Mod Code Base
24). Exit
--------------------------------------------------------
Enter option [ 1 - 24 ] 17
```

```
zstd --version
*** Zstandard CLI (64-bit) v1.5.5, by Yann Collet ***
```

Then install custom tar zstd supported rpm.

AlmaLinux 9 for GCC 13 built tar v1.35 ** Currently Limited Testing ** [[tar v1.35 change log](https://git.savannah.gnu.org/cgit/tar.git/tree/NEWS?id=e545d446dfe6564265cdf4186641ee76f4acc7fa)]

```
cd /svr-setup
wget https://centminmod.com/centminmodparts/tar/tar-zstd-gcc13-1.35-1.el9.x86_64.rpm -O tar-zstd-gcc13-1.35-1.el9.x86_64.rpm
yum localinstall tar-zstd-gcc13-1.35-1.el9.x86_64.rpm
```
```
tar --version
tar (GNU tar) 1.35
Copyright (C) 2023 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by John Gilmore and Jay Fenlason.
```

```
rpm -qa --changelog tar-zstd-gcc13       
* Sun Feb 04 2024 George Liu <centminmod.com> 1.35
- tar 1.35 zstd supported for centminmod.com LEMP stack
```

```
yum -q info tar-zstd-gcc13.x86_64
Installed Packages
Name         : tar-zstd-gcc13
Version      : 1.35
Release      : 1.el9
Architecture : x86_64
Size         : 3.5 M
Source       : tar-zstd-gcc13-1.35-1.el9.src.rpm
Repository   : @System
From repo    : @commandline
Summary      : tar 1.35 zstd supported for centminmod.com LEMP stack
URL          : https://centminmod.com
License      : unknown
Description  : tar 1.35 zstd supported for centminmod.com LEMP stack
```

AlmaLinux 8 for GCC 12 built tar v1.35 ** Currently Limited Testing ** [[tar v1.35 change log](https://git.savannah.gnu.org/cgit/tar.git/tree/NEWS?id=e545d446dfe6564265cdf4186641ee76f4acc7fa)]

```
cd /svr-setup
wget https://centminmod.com/centminmodparts/tar/tar-zstd-gcc12-1.35-1.el8.x86_64.rpm -O tar-zstd-gcc12-1.35-1.el8.x86_64.rpm
yum localinstall tar-zstd-gcc12-1.35-1.el8.x86_64.rpm
```
```
tar --version
tar (GNU tar) 1.35
Copyright (C) 2023 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by John Gilmore and Jay Fenlason.
```

```
rpm -qa --changelog tar-zstd-gcc12       
* Sun Feb 04 2024 George Liu <centminmod.com> 1.35
- tar 1.35 zstd supported for centminmod.com LEMP stack
```

```
yum -q info tar-zstd-gcc12.x86_64
Installed Packages
Name         : tar-zstd-gcc12
Version      : 1.35
Release      : 1.el8
Architecture : x86_64
Size         : 3.6 M
Source       : tar-zstd-gcc12-1.35-1.el8.src.rpm
Repository   : @System
From repo    : @commandline
Summary      : tar 1.35 zstd supported for centminmod.com LEMP stack
URL          : https://centminmod.com
License      : unknown
Description  : tar 1.35 zstd supported for centminmod.com LEMP stack
```

CentOS 7 for GCC 10 built tar v1.35 ** Currently Limited Testing ** [[tar v1.35 change log](https://git.savannah.gnu.org/cgit/tar.git/tree/NEWS?id=e545d446dfe6564265cdf4186641ee76f4acc7fa)]

```
cd /svr-setup
wget https://centminmod.com/centminmodparts/tar/tar-zstd-gcc10-1.35-1.el7.x86_64.rpm -O tar-zstd-gcc10-1.35-1.el7.x86_64.rpm
yum localinstall tar-zstd-gcc10-1.35-1.el7.x86_64.rpm
```
```
tar --version
tar (GNU tar) 1.35
Copyright (C) 2023 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by John Gilmore and Jay Fenlason.
```

```
rpm -qa --changelog tar-zstd-gcc10       
* Sun Feb 04 2024 George Liu <centminmod.com> 1.35
- tar 1.35 zstd supported for centminmod.com LEMP stack
```

```
yum -q info tar-zstd-gcc10.x86_64
Installed Packages
Name        : tar-zstd-gcc10
Arch        : x86_64
Version     : 1.35
Release     : 1.el7
Size        : 3.6 M
Repo        : installed
From repo   : /tar-zstd-gcc10-1.35-1.el7.x86_64
Summary     : tar 1.35 zstd supported for centminmod.com LEMP stack
URL         : https://centminmod.com
License     : unknown
Description : tar 1.35 zstd supported for centminmod.com LEMP stack
```

For GCC 11 built tar v1.34 with additionally synced master branch fixes & for GCC 11 compatibility ** Currently Limited Testing **

```
cd /svr-setup
wget https://centminmod.com/centminmodparts/tar/tar-zstd-gcc11-2021.10.13-1.34-1.el7.x86_64.rpm -O tar-zstd-gcc11-2021.10.13-1.34-1.el7.x86_64.rpm
yum localinstall tar-zstd-gcc11-2021.10.13-1.34-1.el7.x86_64.rpm
```
```
tar --version
tar (GNU tar) 1.34
Copyright (C) 2021 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by John Gilmore and Jay Fenlason.
```

```
rpm -qa --changelog tar-zstd-gcc11-2021.10.13
* Sun Dec 05 2021 George Liu <centminmod.com> 1.34
- tar 1.34 2021.10.13 zstd supported for centminmod.com LEMP stack
- latest tar git master build 2021.10.13

* Sun Dec 05 2021 George Liu <centminmod.com> 1.34
- Fix extraction over pipe (savannah bug #60002)
- Fix memory leak in read_header (savannah bug #59897)
- Fix extraction when . and .. are unreadable
  See https://lists.gnu.org/archive/html/bug-tar/2021-01/msg00012.html
- Gracefully handle duplicate symlinks when extracting
  See https://lists.gnu.org/archive/html/bug-tar/2021-01/msg00026.html
- Re-initialize supplementary groups when switching to user privileges
```

```
yum -q info tar-zstd-gcc11-2021.10.13
Installed Packages
Name        : tar-zstd-gcc11-2021.10.13
Arch        : x86_64
Version     : 1.34
Release     : 1.el7
Size        : 3.5 M
Repo        : installed
From repo   : /tar-zstd-gcc11-2021.10.13-1.34-1.el7.x86_64
Summary     : tar 1.34 zstd supported for centminmod.com LEMP stack
URL         : https://centminmod.com
License     : unknown
Description : tar 1.34 zstd supported for centminmod.com LEMP stack
```

For GCC 9 built tar v1.34 ** Currently Limited Testing **

```
cd /svr-setup
wget https://centminmod.com/centminmodparts/tar/tar-zstd-gcc9-1.34-1.el7.x86_64.rpm -O tar-zstd-gcc9-1.34-1.el7.x86_64.rpm
yum localinstall tar-zstd-gcc9-1.34-1.el7.x86_64.rpm
```
```
tar --version
tar (GNU tar) 1.34
Copyright (C) 2021 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by John Gilmore and Jay Fenlason.
```

```
rpm -qa --changelog tar-zstd-gcc9
* Sun Dec 05 2021 George Liu <centminmod.com> 1.34
- tar 1.34 zstd supported for centminmod.com LEMP stack
- Fix extraction over pipe (savannah bug #60002)
- Fix memory leak in read_header (savannah bug #59897)
- Fix extraction when . and .. are unreadable
  See https://lists.gnu.org/archive/html/bug-tar/2021-01/msg00012.html
- Gracefully handle duplicate symlinks when extracting
  See https://lists.gnu.org/archive/html/bug-tar/2021-01/msg00026.html
- Re-initialize supplementary groups when switching to user privileges
```

```
yum -q info tar-zstd-gcc9.x86_64
Installed Packages
Name        : tar-zstd-gcc9
Arch        : x86_64
Version     : 1.34
Release     : 1.el7
Size        : 3.5 M
Repo        : installed
From repo   : /tar-zstd-gcc9-1.34-1.el7.x86_64
Summary     : tar 1.34 zstd supported for centminmod.com LEMP stack
URL         : https://centminmod.com
License     : unknown
Description : tar 1.34 zstd supported for centminmod.com LEMP stack
```

For GCC 9 built tar v1.33 ** Currently Limited Testing **

```
cd /svr-setup
wget https://centminmod.com/centminmodparts/tar/tar-zstd-gcc9-1.33-1.el7.x86_64.rpm -O tar-zstd-gcc9-1.33-1.el7.x86_64.rpm
yum localinstall tar-zstd-gcc9-1.33-1.el7.x86_64.rpm
```
```
tar --version
tar (GNU tar) 1.33
Copyright (C) 2021 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```

```
rpm -qa --changelog tar-zstd-gcc9
* Mon Jan 25 2021 George Liu <centminmod.com> 1.33
- tar 1.33 zstd supported for centminmod.com LEMP stack
- Fix memory leak in read_header CVE-2021-20193 patch fixed
```

```
yum -q info tar-zstd-gcc9.x86_64
Installed Packages
Name        : tar-zstd-gcc9
Arch        : x86_64
Version     : 1.33
Release     : 1.el7
Size        : 3.5 M
Repo        : installed
From repo   : /tar-zstd-gcc9-1.33-1.el7.x86_64
Summary     : tar 1.33 zstd supported for centminmod.com LEMP stack
URL         : https://centminmod.com
License     : unknown
Description : tar 1.33 zstd supported for centminmod.com LEMP stack
```

For GCC 8 built

```
cd /svr-setup
wget https://centminmod.com/centminmodparts/tar/tar-zstd-gcc8-1.32-1.el7.x86_64.rpm -O tar-zstd-gcc8-1.32-1.el7.x86_64.rpm
yum localinstall tar-zstd-gcc8-1.32-1.el7.x86_64.rpm
```

For GCC 7 built

```
cd /svr-setup
wget https://centminmod.com/centminmodparts/tar/tar-zstd-gcc7-1.32-1.el7.x86_64.rpm -O tar-zstd-gcc7-1.32-1.el7.x86_64.rpm
yum localinstall tar-zstd-gcc7-1.32-1.el7.x86_64.rpm
```

```
yum localinstall tar-zstd-gcc8-1.32-1.el7.x86_64.rpm
Loaded plugins: fastestmirror, priorities, versionlock
Examining /svr-setup/tar-zstd-gcc8-1.32-1.el7.x86_64.rpm: tar-zstd-gcc8-1.32-1.el7.x86_64
Marking /svr-setup/tar-zstd-gcc8-1.32-1.el7.x86_64.rpm to be installed
Resolving Dependencies
--> Running transaction check
---> Package tar-zstd-gcc8.x86_64 0:1.32-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package         Arch     Version      Repository                          Size
================================================================================
Installing:
 tar-zstd-gcc8   x86_64   1.32-1.el7   /tar-zstd-gcc8-1.32-1.el7.x86_64   3.5 M

Transaction Summary
================================================================================
Install  1 Package

Total size: 3.5 M
Installed size: 3.5 M
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : tar-zstd-gcc8-1.32-1.el7.x86_64                              1/1 
  Verifying  : tar-zstd-gcc8-1.32-1.el7.x86_64                              1/1 

Installed:
  tar-zstd-gcc8.x86_64 0:1.32-1.el7                                             

Complete!
```

# Usage

Create a tar archive compressed with zstd

```
tar -caf directory.tar.zst directory/
```

Decompress zstd compressed archive

```
tar -xaf directory.tar.zst
```

Or create tar archive with custom zstd compression level = 4 cpu thread zstd test at level 3 compression

```
tar "-I zstd -3 -T4" -cf directory.tar.zst directory/
```

With [zstd Long Range Mode flag](https://community.centminmod.com/threads/custom-tar-archiver-rpm-build-with-facebook-zstd-compression-support.16243/#post-69530) `--long=27` mode for 128MB window

```
tar "-I zstd -3 -T4 --long=27" -cf directory.tar.zst directory/
```

With `--long=31` mode for 2GB window

```
tar "-I zstd -3 -T4 --long=31" -cf directory.tar.zst directory/
```

Example for backing up Centmin Mod LEMP stack's `/home/nginx/domains/domain.com` Nginx vhost site data files for `domain.com` outlined at https://community.centminmod.com/threads/custom-tar-archiver-rpm-build-with-facebook-zstd-compression-support.16243/#post-69535

```
DT=$(date +"%d%m%y-%H%M%S")
vhostname='domain.com'
backupdir='/home/nginx-backup-sites'
if [[ "$(awk '/MemFree/ {print $2}' /proc/meminfo)" -ge '2500000' ]]; then long=31; else long=27; fi
pushd /home/nginx/domains/ && mkdir -p "${backupdir}"
time tar "-I zstd -3 -T0 --long=${long} --adapt" --exclude=log/* --exclude=backup/* -cpf "${backupdir}/${vhostname}-${DT}.tar.zst" ${vhostname}
fs=$(ls -lAh "${backupdir}/${vhostname}-${DT}.tar.zst" | awk '{print $5,$9}') && echo "$fs"
popd && echo "backup ${vhostname} files only complete at ${backupdir}/${vhostname}-${DT}.tar.zst"
```

1. 1st line assigns to DT variable a date timestamp which is appended to your tar.zst backup file
2. 2nd line for vhostname variable assigns variable for intended domain name you want to backup
3. 3rd line assigns backupdir variable the directory where you want to save your tar.zst backup file
4. 4th line determines which zstd long range method is used depending on how much free memory you have available. So if you have more than 2,500,000 KB free memory, zstd will use long range method with --long=31 for 2GB window. If you have less than 2,500,00 KB free memory, zstd will use long range method with --long=27 for 128MB window.
5. 5th line uses pushd to change into /home/nginx/domains directory and create the backup directory set on 3rd line's backupdir variable
6. 6th line, timed tar + zstd backup and compression which also uses zstd automatic level determination --adapt flag and -T0 meaning use all cpu cores. Tar also excludes contents of /home/nginx/domains/domain.com/log and /home/nginx/domains/domain.com/backup directories
7. 7th line assigns to fs variable size and full path name of resulting tar.zst backup file and prints that out via echo command
8. 8th line uses popd to return you to whatever directory you were in prior to pushd command on line 5 above and prints out completion message and full path to tar.zst backup file

Listing of tar.zst backup compressed files

```
ls -lah /home/nginx-backup-sites           
total 32K
drwxr-xr-x   2 root root 4.0K Dec 20 02:03 .
drwxr-xr-x. 31 root root 4.0K Dec 20 01:01 ..
-rw-r--r--   1 root root  12K Dec 20 01:08 domain.com-201218-010827.tar.zst
-rw-r--r--   1 root root  12K Dec 20 01:35 domain.com-201218-013419.tar.zst
```

To restore Centmin Mod Nginx vhost backup file outlined at https://community.centminmod.com/threads/custom-tar-archiver-rpm-build-with-facebook-zstd-compression-support.16243/#post-69535

Edit and assign to backupfile variable the full path to the backup file you want to restore from the backup commands you ran above.

```
DT=$(date +"%d%m%y-%H%M%S")
backupfile='/home/nginx-backup-sites/domain.com-201218-010827.tar.zst'
vhostname='domain.com'
restoredir="/home/nginx/domains/${vhostname}-restored-${DT}"
mkdir -p ${restoredir}
if [[ "$(awk '/MemFree/ {print $2}' /proc/meminfo)" -ge '2500000' ]]; then long=31; else long=27; fi
time tar "-I zstd -d -T0 --long=${long}" -xvf ${backupfile} -C ${restoredir}
echo "diff compare restore versus existing directories"
diff -r /home/nginx/domains/${vhostname} ${restoredir}/${vhostname}
echo "restored ${vhostname} files to ${restoredir}"
```

1. 1st line assigns to backupfile variable the full path to the backup file you want to restore from the backup commands you ran above.
2. 2nd line for vhostname variable assigns variable for intended domain name you intend to restore to
3. 3rd line assigns restoredir variable the directory where the backup tar.zst files' contents will be restored to. You can then compare or sync directory/files with the existing version of the nginx vhost or move the restored files to replace existing version of the nginx vhost
4. 4th line creates the restore directory assigned to restoredir variable if it doesn't exist
5. 5th line determines which zstd long range method is used depending on how much free memory you have available. So if you have more than 2,500,000 KB free memory, zstd will use long range method with --long=31 for 2GB window. If you have less than 2,500,00 KB free memory, zstd will use long range method with --long=27 for 128MB window.
6. 6th line run timed tar decompress and extraction with zstd with all cpu cores and extract to restore directory
7. 7th & 8th lines print out the differences only between restored directory from tar.zst backup and the existing nginx vhost site
9. 9th line, restore completion message

listing in /home/nginx/domains/ with existing nginx vhost directory and restored version

```
ls -lah /home/nginx/domains/ | grep ${vhostname}
drwxr-s---   6 nginx nginx 4.0K Dec 20 01:04 domain.com
drwxr-sr-x   3 root  nginx 4.0K Dec 20 01:36 domain.com-restored-201218-013419
```

# RPM Info

```
tar --version
tar (GNU tar) 1.32
Copyright (C) 2019 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by John Gilmore and Jay Fenlason.
```

CentOS 7

Built with GCC 8

```
yum -q info tar-zstd-gcc8
Installed Packages
Name        : tar-zstd-gcc8
Arch        : x86_64
Version     : 1.32
Release     : 1.el7
Size        : 3.5 M
Repo        : installed
From repo   : /tar-zstd-gcc8-1.32-1.el7.x86_64
Summary     : tar 1.32 zstd supported for centminmod.com LEMP stack
URL         : https://centminmod.com
License     : unknown
Description : tar 1.32 zstd supported for centminmod.com LEMP stack
```

Built with GCC 7

```
yum -q info tar-zstd-gcc7
Installed Packages
Name        : tar-zstd-gcc7
Arch        : x86_64
Version     : 1.32
Release     : 1.el7
Size        : 3.5 M
Repo        : installed
Summary     : tar 1.32 zstd supported for centminmod.com LEMP stack
URL         : https://centminmod.com
License     : unknown
Description : tar 1.32 zstd supported for centminmod.com LEMP stack
```

CentOS 6

```
yum -q info tar-zstd-gcc7
Installed Packages
Name        : tar-zstd-gcc7
Arch        : x86_64
Version     : 1.32
Release     : 1.el6
Size        : 3.5 M
Repo        : installed
From repo   : /tar-zstd-gcc7-1.32-1.el6.x86_64
Summary     : tar 1.32 zstd supported for centminmod.com LEMP stack
URL         : https://centminmod.com
License     : unknown
Description : tar 1.32 zstd supported for centminmod.com LEMP stack
```

For GCC 8 built

```
rpm -qa --changelog tar-zstd-gcc8
* Sat May 23 2020 George Liu <centminmod.com> 1.32
- tar 1.32 zstd supported for centminmod.com LEMP stack
```

For GCC 7 built

```
rpm -qa --changelog tar-zstd-gcc7
* Tue Feb 26 2019 George Liu <centminmod.com> 1.32
- tar 1.32 zstd supported for centminmod.com LEMP stack
```

```
rpm -ql tar-zstd-gcc7
/usr/local/bin/tar
/usr/local/libexec/rmt
/usr/local/share/info/dir
/usr/local/share/info/tar.info
/usr/local/share/info/tar.info-1
/usr/local/share/info/tar.info-2
/usr/local/share/locale/bg/LC_MESSAGES/tar.mo
/usr/local/share/locale/ca/LC_MESSAGES/tar.mo
/usr/local/share/locale/cs/LC_MESSAGES/tar.mo
/usr/local/share/locale/da/LC_MESSAGES/tar.mo
/usr/local/share/locale/de/LC_MESSAGES/tar.mo
/usr/local/share/locale/el/LC_MESSAGES/tar.mo
/usr/local/share/locale/eo/LC_MESSAGES/tar.mo
/usr/local/share/locale/es/LC_MESSAGES/tar.mo
/usr/local/share/locale/et/LC_MESSAGES/tar.mo
/usr/local/share/locale/eu/LC_MESSAGES/tar.mo
/usr/local/share/locale/fi/LC_MESSAGES/tar.mo
/usr/local/share/locale/fr/LC_MESSAGES/tar.mo
/usr/local/share/locale/ga/LC_MESSAGES/tar.mo
/usr/local/share/locale/gl/LC_MESSAGES/tar.mo
/usr/local/share/locale/hr/LC_MESSAGES/tar.mo
/usr/local/share/locale/hu/LC_MESSAGES/tar.mo
/usr/local/share/locale/id/LC_MESSAGES/tar.mo
/usr/local/share/locale/it/LC_MESSAGES/tar.mo
/usr/local/share/locale/ja/LC_MESSAGES/tar.mo
/usr/local/share/locale/ko/LC_MESSAGES/tar.mo
/usr/local/share/locale/ky/LC_MESSAGES/tar.mo
/usr/local/share/locale/ms/LC_MESSAGES/tar.mo
/usr/local/share/locale/nb/LC_MESSAGES/tar.mo
/usr/local/share/locale/nl/LC_MESSAGES/tar.mo
/usr/local/share/locale/pl/LC_MESSAGES/tar.mo
/usr/local/share/locale/pt/LC_MESSAGES/tar.mo
/usr/local/share/locale/pt_BR/LC_MESSAGES/tar.mo
/usr/local/share/locale/ro/LC_MESSAGES/tar.mo
/usr/local/share/locale/ru/LC_MESSAGES/tar.mo
/usr/local/share/locale/sk/LC_MESSAGES/tar.mo
/usr/local/share/locale/sl/LC_MESSAGES/tar.mo
/usr/local/share/locale/sr/LC_MESSAGES/tar.mo
/usr/local/share/locale/sv/LC_MESSAGES/tar.mo
/usr/local/share/locale/tr/LC_MESSAGES/tar.mo
/usr/local/share/locale/uk/LC_MESSAGES/tar.mo
/usr/local/share/locale/vi/LC_MESSAGES/tar.mo
/usr/local/share/locale/zh_CN/LC_MESSAGES/tar.mo
/usr/local/share/locale/zh_TW/LC_MESSAGES/tar.mo
/usr/local/share/man/man1/tar.1
/usr/local/share/man/man8/rmt.8
```

```
tar --help
Usage: tar [OPTION...] [FILE]...
GNU 'tar' saves many files together into a single tape or disk archive, and can
restore individual files from the archive.

Examples:
  tar -cf archive.tar foo bar  # Create archive.tar from files foo and bar.
  tar -tvf archive.tar         # List all files in archive.tar verbosely.
  tar -xf archive.tar          # Extract all files from archive.tar.

 Local file name selection:

      --add-file=FILE        add given FILE to the archive (useful if its name
                             starts with a dash)
  -C, --directory=DIR        change to directory DIR
      --exclude=PATTERN      exclude files, given as a PATTERN
      --exclude-backups      exclude backup and lock files
      --exclude-caches       exclude contents of directories containing
                             CACHEDIR.TAG, except for the tag file itself
      --exclude-caches-all   exclude directories containing CACHEDIR.TAG
      --exclude-caches-under exclude everything under directories containing
                             CACHEDIR.TAG
      --exclude-ignore=FILE  read exclude patterns for each directory from
                             FILE, if it exists
      --exclude-ignore-recursive=FILE
                             read exclude patterns for each directory and its
                             subdirectories from FILE, if it exists
      --exclude-tag=FILE     exclude contents of directories containing FILE,
                             except for FILE itself
      --exclude-tag-all=FILE exclude directories containing FILE
      --exclude-tag-under=FILE   exclude everything under directories
                             containing FILE
      --exclude-vcs          exclude version control system directories
      --exclude-vcs-ignores  read exclude patterns from the VCS ignore files
      --no-null              disable the effect of the previous --null option
      --no-recursion         avoid descending automatically in directories
      --no-unquote           do not unquote input file or member names
      --no-verbatim-files-from   -T treats file names starting with dash as
                             options (default)
      --null                 -T reads null-terminated names; implies
                             --verbatim-files-from
      --recursion            recurse into directories (default)
  -T, --files-from=FILE      get names to extract or create from FILE
      --unquote              unquote input file or member names (default)
      --verbatim-files-from  -T reads file names verbatim (no escape or option
                             handling)
  -X, --exclude-from=FILE    exclude patterns listed in FILE

 File name matching options (affect both exclude and include patterns):

      --anchored             patterns match file name start
      --ignore-case          ignore case
      --no-anchored          patterns match after any '/' (default for
                             exclusion)
      --no-ignore-case       case sensitive matching (default)
      --no-wildcards         verbatim string matching
      --no-wildcards-match-slash   wildcards do not match '/'
      --wildcards            use wildcards (default for exclusion)
      --wildcards-match-slash   wildcards match '/' (default for exclusion)

 Main operation mode:

  -A, --catenate, --concatenate   append tar files to an archive
  -c, --create               create a new archive
  -d, --diff, --compare      find differences between archive and file system
      --delete               delete from the archive (not on mag tapes!)
  -r, --append               append files to the end of an archive
  -t, --list                 list the contents of an archive
      --test-label           test the archive volume label and exit
  -u, --update               only append files newer than copy in archive
  -x, --extract, --get       extract files from an archive

 Operation modifiers:

      --check-device         check device numbers when creating incremental
                             archives (default)
  -g, --listed-incremental=FILE   handle new GNU-format incremental backup
  -G, --incremental          handle old GNU-format incremental backup
      --hole-detection=TYPE  technique to detect holes
      --ignore-failed-read   do not exit with nonzero on unreadable files
      --level=NUMBER         dump level for created listed-incremental archive
  -n, --seek                 archive is seekable
      --no-check-device      do not check device numbers when creating
                             incremental archives
      --no-seek              archive is not seekable
      --occurrence[=NUMBER]  process only the NUMBERth occurrence of each file
                             in the archive; this option is valid only in
                             conjunction with one of the subcommands --delete,
                             --diff, --extract or --list and when a list of
                             files is given either on the command line or via
                             the -T option; NUMBER defaults to 1
      --sparse-version=MAJOR[.MINOR]
                             set version of the sparse format to use (implies
                             --sparse)
  -S, --sparse               handle sparse files efficiently

 Overwrite control:

  -k, --keep-old-files       don't replace existing files when extracting,
                             treat them as errors
      --keep-directory-symlink   preserve existing symlinks to directories when
                             extracting
      --keep-newer-files     don't replace existing files that are newer than
                             their archive copies
      --no-overwrite-dir     preserve metadata of existing directories
      --one-top-level[=DIR]  create a subdirectory to avoid having loose files
                             extracted
      --overwrite            overwrite existing files when extracting
      --overwrite-dir        overwrite metadata of existing directories when
                             extracting (default)
      --recursive-unlink     empty hierarchies prior to extracting directory
      --remove-files         remove files after adding them to the archive
      --skip-old-files       don't replace existing files when extracting,
                             silently skip over them
  -U, --unlink-first         remove each file prior to extracting over it
  -W, --verify               attempt to verify the archive after writing it

 Select output stream:

      --ignore-command-error ignore exit codes of children
      --no-ignore-command-error   treat non-zero exit codes of children as
                             error
  -O, --to-stdout            extract files to standard output
      --to-command=COMMAND   pipe extracted files to another program

 Handling of file attributes:

      --atime-preserve[=METHOD]   preserve access times on dumped files, either
                             by restoring the times after reading
                             (METHOD='replace'; default) or by not setting the
                             times in the first place (METHOD='system')
      --clamp-mtime          only set time when the file is more recent than
                             what was given with --mtime
      --delay-directory-restore   delay setting modification times and
                             permissions of extracted directories until the end
                             of extraction
      --group=NAME           force NAME as group for added files
      --group-map=FILE       use FILE to map file owner GIDs and names
      --mode=CHANGES         force (symbolic) mode CHANGES for added files
      --mtime=DATE-OR-FILE   set mtime for added files from DATE-OR-FILE
  -m, --touch                don't extract file modified time
      --no-delay-directory-restore
                             cancel the effect of --delay-directory-restore
                             option
      --no-same-owner        extract files as yourself (default for ordinary
                             users)
      --no-same-permissions  apply the user's umask when extracting permissions
                             from the archive (default for ordinary users)
      --numeric-owner        always use numbers for user/group names
      --owner=NAME           force NAME as owner for added files
      --owner-map=FILE       use FILE to map file owner UIDs and names
  -p, --preserve-permissions, --same-permissions
                             extract information about file permissions
                             (default for superuser)
      --same-owner           try extracting files with the same ownership as
                             exists in the archive (default for superuser)
  -s, --preserve-order, --same-order
                             member arguments are listed in the same order as
                             the files in the archive
      --sort=ORDER           directory sorting order: none (default), name or
                             inode

 Handling of extended file attributes:

      --acls                 Enable the POSIX ACLs support
      --no-acls              Disable the POSIX ACLs support
      --no-selinux           Disable the SELinux context support
      --no-xattrs            Disable extended attributes support
      --selinux              Enable the SELinux context support
      --xattrs               Enable extended attributes support
      --xattrs-exclude=MASK  specify the exclude pattern for xattr keys
      --xattrs-include=MASK  specify the include pattern for xattr keys

 Device selection and switching:

  -f, --file=ARCHIVE         use archive file or device ARCHIVE
      --force-local          archive file is local even if it has a colon
  -F, --info-script=NAME, --new-volume-script=NAME
                             run script at end of each tape (implies -M)
  -L, --tape-length=NUMBER   change tape after writing NUMBER x 1024 bytes
  -M, --multi-volume         create/list/extract multi-volume archive
      --rmt-command=COMMAND  use given rmt COMMAND instead of rmt
      --rsh-command=COMMAND  use remote COMMAND instead of rsh
      --volno-file=FILE      use/update the volume number in FILE

 Device blocking:

  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bytes per record
  -B, --read-full-records    reblock as we read (for 4.2BSD pipes)
  -i, --ignore-zeros         ignore zeroed blocks in archive (means EOF)
      --record-size=NUMBER   NUMBER of bytes per record, multiple of 512

 Archive format selection:

  -H, --format=FORMAT        create archive of the given format

 FORMAT is one of the following:

    gnu                      GNU tar 1.13.x format
    oldgnu                   GNU format as per tar <= 1.12
    pax                      POSIX 1003.1-2001 (pax) format
    posix                    same as pax
    ustar                    POSIX 1003.1-1988 (ustar) format
    v7                       old V7 tar format

      --old-archive, --portability
                             same as --format=v7
      --pax-option=keyword[[:]=value][,keyword[[:]=value]]...
                             control pax keywords
      --posix                same as --format=posix
  -V, --label=TEXT           create archive with volume name TEXT; at
                             list/extract time, use TEXT as a globbing pattern
                             for volume name

 Compression options:

  -a, --auto-compress        use archive suffix to determine the compression
                             program
  -I, --use-compress-program=PROG
                             filter through PROG (must accept -d)
  -j, --bzip2                filter the archive through bzip2
  -J, --xz                   filter the archive through xz
      --lzip                 filter the archive through lzip
      --lzma                 filter the archive through lzma
      --lzop                 filter the archive through lzop
      --no-auto-compress     do not use archive suffix to determine the
                             compression program
  -z, --gzip, --gunzip, --ungzip   filter the archive through gzip
      --zstd                 filter the archive through zstd
  -Z, --compress, --uncompress   filter the archive through compress

 Local file selection:

      --backup[=CONTROL]     backup before removal, choose version CONTROL
  -h, --dereference          follow symlinks; archive and dump the files they
                             point to
      --hard-dereference     follow hard links; archive and dump the files they
                             refer to
  -K, --starting-file=MEMBER-NAME
                             begin at member MEMBER-NAME when reading the
                             archive
      --newer-mtime=DATE     compare date and time when data changed only
  -N, --newer=DATE-OR-FILE, --after-date=DATE-OR-FILE
                             only store files newer than DATE-OR-FILE
      --one-file-system      stay in local file system when creating archive
  -P, --absolute-names       don't strip leading '/'s from file names
      --suffix=STRING        backup before removal, override usual suffix ('~'
                             unless overridden by environment variable
                             SIMPLE_BACKUP_SUFFIX)

 File name transformations:

      --strip-components=NUMBER   strip NUMBER leading components from file
                             names on extraction
      --transform=EXPRESSION, --xform=EXPRESSION
                             use sed replace EXPRESSION to transform file
                             names

 Informative output:

      --checkpoint[=NUMBER]  display progress messages every NUMBERth record
                             (default 10)
      --checkpoint-action=ACTION   execute ACTION on each checkpoint
      --full-time            print file time to its full resolution
      --index-file=FILE      send verbose output to FILE
  -l, --check-links          print a message if not all links are dumped
      --no-quote-chars=STRING   disable quoting for characters from STRING
      --quote-chars=STRING   additionally quote characters from STRING
      --quoting-style=STYLE  set name quoting style; see below for valid STYLE
                             values
  -R, --block-number         show block number within archive with each message
                            
      --show-defaults        show tar defaults
      --show-omitted-dirs    when listing or extracting, list each directory
                             that does not match search criteria
      --show-snapshot-field-ranges
                             show valid ranges for snapshot-file fields
      --show-transformed-names, --show-stored-names
                             show file or archive names after transformation
      --totals[=SIGNAL]      print total bytes after processing the archive;
                             with an argument - print total bytes when this
                             SIGNAL is delivered; Allowed signals are: SIGHUP,
                             SIGQUIT, SIGINT, SIGUSR1 and SIGUSR2; the names
                             without SIG prefix are also accepted
      --utc                  print file modification times in UTC
  -v, --verbose              verbosely list files processed
      --warning=KEYWORD      warning control
  -w, --interactive, --confirmation
                             ask for confirmation for every action

 Compatibility options:

  -o                         when creating, same as --old-archive; when
                             extracting, same as --no-same-owner

 Other options:

  -?, --help                 give this help list
      --restrict             disable use of some potentially harmful options
      --usage                give a short usage message
      --version              print program version

Mandatory or optional arguments to long options are also mandatory or optional
for any corresponding short options.

The backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control may be set with --backup or VERSION_CONTROL, values are:

  none, off       never make backups
  t, numbered     make numbered backups
  nil, existing   numbered if numbered backups exist, simple otherwise
  never, simple   always make simple backups

Valid arguments for the --quoting-style option are:

  literal
  shell
  shell-always
  shell-escape
  shell-escape-always
  c
  c-maybe
  escape
  locale
  clocale

*This* tar defaults to:
--format=gnu -f- -b20 --quoting-style=escape
--rmt-command=/usr/local/libexec/rmt
```