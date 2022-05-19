---
title: squashfs-tools
nav_order: 5021
has_children: false
parent: 探索
grand_parent: squashfs
---


# squashfs-tools


## Ubuntu Package

* [squashfs-tools](https://packages.ubuntu.com/jammy/squashfs-tools)


## apt-cache show

執行

``` sh
apt-cache show squashfs-tools
```

顯示

```
Package: squashfs-tools
Architecture: amd64
Version: 1:4.5-3build1
Priority: optional
Section: admin
Origin: Ubuntu
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Laszlo Boszormenyi (GCS) <gcs@debian.org>
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Installed-Size: 414
Depends: libc6 (>= 2.34), liblz4-1 (>= 0.0~r130), liblzma5 (>= 5.1.1alpha+20120614), liblzo2-2 (>= 2.02), libzstd1 (>= 1.4.0), zlib1g (>= 1:1.1.4)
Filename: pool/main/s/squashfs-tools/squashfs-tools_4.5-3build1_amd64.deb
Size: 158782
MD5sum: 89c9a90e53c8d1514763f3c5beafd873
SHA1: d61c6d2fd35de044908f6730771d2dd2cb732472
SHA256: 96a92cd6f2784d87007b0d057b162df85941a2b42351bbb964ea4d94c72b841e
SHA512: 07deb944bb2ad0bd4b9902a4275e2b8c4e141e6cab75bdbd9b751a82b37324e52f82326069853c98d29f6e6b1ab31126b1591c71ef9966b15b44d1cf49795afd
Homepage: https://github.com/plougher/squashfs-tools
Description-en: Tool to create and append to squashfs filesystems
 Squashfs is a highly compressed read-only filesystem for Linux. It uses zlib
 compression to compress both files, inodes and directories. Inodes in the
 system are very small and all blocks are packed to minimise data overhead.
 Block sizes greater than 4K are supported up to a maximum of 64K.
 .
 Squashfs is intended for general read-only filesystem use, for archival use
 (i.e. in cases where a .tar.gz file may be used), and in constrained block
 device/memory systems (e.g. embedded systems) where low overhead is needed.
Description-md5: 17dcc783a84cdb071acdaa9841a6522c
Task: server-minimal, ubuntu-desktop-minimal, ubuntu-desktop, cloud-image, ubuntu-desktop-raspi, ubuntu-wsl, server, ubuntu-server-raspi, kubuntu-desktop, xubuntu-core, xubuntu-desktop, lubuntu-desktop, ubuntustudio-desktop-core, ubuntustudio-desktop, ubuntukylin-desktop, ubuntu-mate-core, ubuntu-mate-desktop, ubuntu-budgie-desktop, ubuntu-budgie-desktop-raspi
```


## apt-cache showsrc

執行

``` sh
apt-cache showsrc squashfs-tools
```

顯示

```
Package: squashfs-tools
Format: 3.0 (quilt)
Binary: squashfs-tools
Architecture: linux-any kfreebsd-any
Version: 1:4.5-3build1
Priority: optional
Section: kernel
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Laszlo Boszormenyi (GCS) <gcs@debian.org>
Standards-Version: 4.5.1
Build-Depends: debhelper-compat (= 13), libattr1-dev, liblzma-dev, liblzo2-dev, liblz4-dev, zlib1g-dev, libzstd-dev
Homepage: https://github.com/plougher/squashfs-tools
Directory: pool/main/s/squashfs-tools
Package-List:
 squashfs-tools deb kernel optional arch=linux-any,kfreebsd-any
Files:
 53f83835f46bff578e975956e97ff0aa 2023 squashfs-tools_4.5-3build1.dsc
 ef7093fe887112443b8d18af5eb77cf2 250471 squashfs-tools_4.5.orig.tar.gz
 62e031158ab29cc73d78363b5efabb7a 17144 squashfs-tools_4.5-3build1.debian.tar.xz
Checksums-Sha1:
 5ce7b7ac1d2c5821b0cd2e55d54d44c8c0a3706f 2023 squashfs-tools_4.5-3build1.dsc
 19d10fcb77f09c4615ecb2fcf6b005c2d6b8469d 250471 squashfs-tools_4.5.orig.tar.gz
 2690c39e8b0569635186bfbb242407bb51ebccbb 17144 squashfs-tools_4.5-3build1.debian.tar.xz
Checksums-Sha256:
 fa3f63e55da0f7c96ec267efe4ce4af6b8c973257cdd98a0dd01db1bd8592f13 2023 squashfs-tools_4.5-3build1.dsc
 b9e16188e6dc1857fe312633920f7d71cc36b0162eb50f3ecb1f0040f02edddd 250471 squashfs-tools_4.5.orig.tar.gz
 d03525db1ca2451da315f49deb87d0dc9e7b4e160cf9e278004082944a7df644 17144 squashfs-tools_4.5-3build1.debian.tar.xz
Checksums-Sha512:
 7a8d2a4389941b40943e01cb0387bcfa4cdc4ddbde780d0c09bd003519d65d81b7ab921b35eb385e653acb58762ba6189680d1930bfbe9e799551e0fff1a1a15 2023 squashfs-tools_4.5-3build1.dsc
 e00610487d24eed9e5dadcf84014a3d7faa9815d8ce00fd4660e6c8ce394dccf185ed9f387f4fa1313b9812fe770f802bdcbaef87887f2bcefacf234594a72e0 250471 squashfs-tools_4.5.orig.tar.gz
 9d10a782fbb3f5bf108a6e9bde7721843a3fcbf23574762ab35797fe110cf713c7392b1752f2583df1e1d8c861c0d7548ea69eaf8b98192553536f93694f018f 17144 squashfs-tools_4.5-3build1.debian.tar.xz
```


## install

執行下面指令，安裝「[squashfs-tools](https://packages.ubuntu.com/jammy/squashfs-tools)」

``` sh
sudo apt-get install squashfs-tools
```


## dpkg -l


執行

``` sh
dpkg -l '*squashfs*'
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version       Architecture Description
+++-==============-=============-============-=================================================
ii  squashfs-tools 1:4.5-3build1 amd64        Tool to create and append to squashfs filesystems
```


執行

```
dpkg -l squashfs-tools
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version       Architecture Description
+++-==============-=============-============-=================================================
ii  squashfs-tools 1:4.5-3build1 amd64        Tool to create and append to squashfs filesystems
```

## dpkg -L

執行下面指令，觀看有那些[檔案](https://packages.ubuntu.com/jammy/amd64/squashfs-tools/filelist)，安裝在系統上。

```
dpkg -L squashfs-tools | sort
```

顯示

```
/.
/usr
/usr/bin
/usr/bin/mksquashfs
/usr/bin/sqfscat
/usr/bin/sqfstar
/usr/bin/unsquashfs
/usr/share
/usr/share/doc
/usr/share/doc/squashfs-tools
/usr/share/doc/squashfs-tools/changelog.Debian.gz
/usr/share/doc/squashfs-tools/copyright
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/mksquashfs.1.gz
/usr/share/man/man1/unsquashfs.1.gz
```


## bin

執行

``` sh
dpkg -L squashfs-tools | grep 'bin/' | sort
```

顯示

```
/usr/bin/mksquashfs
/usr/bin/sqfscat
/usr/bin/sqfstar
/usr/bin/unsquashfs
```


## man

執行

``` sh
dpkg -L squashfs-tools | grep '/man/man.*/' | sort
```

顯示

```
/usr/share/man/man1/mksquashfs.1.gz
/usr/share/man/man1/unsquashfs.1.gz
```


* $ man [mksquashfs](http://manpages.ubuntu.com/manpages/jammy/en/man1/mksquashfs.1.html)
* $ man [unsquashfs](http://manpages.ubuntu.com/manpages/jammy/en/man1/unsquashfs.1.html)
* [SquashFS HOWTO](https://tldp.org/HOWTO/SquashFS-HOWTO/index.html) / [4. Creating and using squashed file systems](https://tldp.org/HOWTO/SquashFS-HOWTO/creatingandusing.html)


## apt-get download

執行下面指令，準備下載工作資料夾，並且切換到該資料夾

``` sh
mkdir -p ~/Downloads/squashfs-tools/download
cd ~/Downloads/squashfs-tools/download
```

執行下面指令，下載「Package: [squashfs-tools](https://packages.ubuntu.com/jammy/squashfs-tools)」

``` sh
apt-get download squashfs-tools
```

會下載一個檔案「squashfs-tools_1%3a4.5-3build1_amd64.deb」。

執行

``` sh
ls -1
```

顯示

```
squashfs-tools_1%3a4.5-3build1_amd64.deb
```

執行下面指令，解開檔案「squashfs-tools_1%3a4.5-3build1_amd64.deb」到資料夾「squashfs-tools」

``` sh
dpkg -x 'squashfs-tools_1%3a4.5-3build1_amd64.deb' squashfs-tools
```

會產生一個資料夾「squashfs-tools」。


執行下面指令，觀看資料夾「squashfs-tools」有哪些檔案。

``` sh
tree squashfs-tools
```

顯示

```
squashfs-tools
└── usr
    ├── bin
    │   ├── mksquashfs
    │   ├── sqfscat -> unsquashfs
    │   ├── sqfstar -> mksquashfs
    │   └── unsquashfs
    └── share
        ├── doc
        │   └── squashfs-tools
        │       ├── changelog.Debian.gz
        │       └── copyright
        └── man
            └── man1
                ├── mksquashfs.1.gz
                └── unsquashfs.1.gz

7 directories, 8 files
```

執行下面指令，解開「Debian Control file」。

``` sh
dpkg -e 'squashfs-tools_1%3a4.5-3build1_amd64.deb'
```

會產生一個資料夾「DEBIAN」

執行下面指令，觀看資料夾「DEBIAN」有哪些檔案。

``` sh
tree DEBIAN
```

顯示

```
DEBIAN/
├── control
└── md5sums

0 directories, 2 files
```


## apt-get source


執行下面指令，準備下載工作資料夾，並且切換到該資料夾

``` sh
mkdir -p ~/Downloads/squashfs-tools/source
cd ~/Downloads/squashfs-tools/source
```

執行下面指令，下載「Source Package: [squashfs-tools](https://packages.ubuntu.com/source/jammy/squashfs-tools)」

``` sh
apt-get source squashfs-tools
```

會下載下面三個檔案

* squashfs-tools_4.5-3build1.debian.tar.xz
* squashfs-tools_4.5-3build1.dsc
* squashfs-tools_4.5.orig.tar.gz

並且解開到資料夾「squashfs-tools-4.5」

執行下面指令，觀看資料夾「squashfs-tools-4.5」第一層

``` sh
ls -1 squashfs-tools-4.5/
```

顯示

```
ACKNOWLEDGEMENTS
ACTIONS-README
CHANGES
COPYING
debian
INSTALL
README
README-4.5
RELEASE-READMEs
squashfs-tools
USAGE
```


執行下面指令，觀看資料夾「squashfs-tools-4.5」有哪些檔案。

``` sh
tree squashfs-tools-4.5
```

顯示

```
squashfs-tools-4.5
├── ACKNOWLEDGEMENTS
├── ACTIONS-README
├── CHANGES
├── COPYING
├── debian
│   ├── changelog
│   ├── control
│   ├── copyright
│   ├── manpages
│   │   ├── mksquashfs.1
│   │   └── unsquashfs.1
│   ├── patches
│   │   ├── 0001-kfreebsd.patch
│   │   ├── 0002-fix_symlinks.patch
│   │   ├── 0003-use-squashfs_closedir-to-delete-directory.patch
│   │   ├── 0004-dynamically_allocate_name.patch
│   │   ├── 0005-use_linked_list_to_store_directory_names.patch
│   │   ├── 0006-additional_write_outside_destination_directory_exploit_fix.patch
│   │   ├── 0007-add_makefile_entry_for_unsquash-12.patch
│   │   └── series
│   ├── rules
│   ├── source
│   │   └── format
│   ├── squashfs-tools.manpages
│   └── watch
├── INSTALL
├── README
├── README-4.5
├── RELEASE-READMEs
│   ├── DONATIONS
│   ├── PERFORMANCE.README
│   ├── pseudo-file.example
│   ├── README-2.0
│   ├── README-2.0-AMD64
│   ├── README-2.1
│   ├── README-3.0
│   ├── README-3.1
│   ├── README-3.2
│   ├── README-3.3
│   ├── README-4.0
│   ├── README-4.1
│   ├── README-4.2
│   ├── README-4.3
│   └── README-4.4
├── squashfs-tools
│   ├── action.c
│   ├── action.h
│   ├── caches-queues-lists.c
│   ├── caches-queues-lists.h
│   ├── compressor.c
│   ├── compressor.h
│   ├── endian_compat.h
│   ├── error.h
│   ├── fnmatch_compat.h
│   ├── gzip_wrapper.c
│   ├── gzip_wrapper.h
│   ├── info.c
│   ├── info.h
│   ├── lz4_wrapper.c
│   ├── lz4_wrapper.h
│   ├── lzma_wrapper.c
│   ├── lzma_xz_wrapper.c
│   ├── lzo_wrapper.c
│   ├── lzo_wrapper.h
│   ├── Makefile
│   ├── mksquashfs.c
│   ├── mksquashfs_error.h
│   ├── mksquashfs.h
│   ├── process_fragments.c
│   ├── process_fragments.h
│   ├── progressbar.c
│   ├── progressbar.h
│   ├── pseudo.c
│   ├── pseudo.h
│   ├── reader.c
│   ├── read_fs.c
│   ├── read_fs.h
│   ├── read_xattrs.c
│   ├── restore.c
│   ├── restore.h
│   ├── sort.c
│   ├── sort.h
│   ├── squashfs_compat.h
│   ├── squashfs_fs.h
│   ├── squashfs_swap.h
│   ├── swap.c
│   ├── tar.c
│   ├── tar.h
│   ├── tar_xattr.c
│   ├── unsquash-1234.c
│   ├── unsquash-123.c
│   ├── unsquash-12.c
│   ├── unsquash-1.c
│   ├── unsquash-2.c
│   ├── unsquash-34.c
│   ├── unsquash-3.c
│   ├── unsquash-4.c
│   ├── unsquashfs.c
│   ├── unsquashfs_error.h
│   ├── unsquashfs.h
│   ├── unsquashfs_info.c
│   ├── unsquashfs_info.h
│   ├── unsquashfs_xattr.c
│   ├── version.mk
│   ├── xattr.c
│   ├── xattr.h
│   ├── xz_wrapper.c
│   ├── xz_wrapper.h
│   ├── zstd_wrapper.c
│   └── zstd_wrapper.h
└── USAGE

6 directories, 105 files
```
