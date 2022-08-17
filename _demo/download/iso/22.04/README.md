
# Download ISO / Ubuntu


## Link

* https://releases.ubuntu.com/
* https://cdimage.ubuntu.com/
* [How to verify your Ubuntu download](https://ubuntu.com/tutorials/how-to-verify-ubuntu#1-overview)


## Mount

mount iso

``` sh
sudo mount -o loop xubuntu-22.04-desktop-amd64.iso mnt
```

run

``` sh
ls ./mnt -1
```

show

```
boot
boot.catalog
casper
dists
EFI
install
md5sum.txt
pool
preseed
ubuntu
```

run

``` sh
file ./mnt/ubuntu
```

show

```
./mnt/ubuntu: symbolic link to .
```


## grub.cfg

run

``` sh
ls ./mnt/boot/grub -1
```

show

```
fonts
grub.cfg
i386-pc
loopback.cfg
x86_64-efi
```

run

``` sh
cat ./mnt/boot/grub/grub.cfg
```

show

```
set timeout=30

loadfont unicode

set menu_color_normal=white/black
set menu_color_highlight=black/light-gray

menuentry "Try or Install Xubuntu" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed maybe-ubiquity quiet splash ---
	initrd	/casper/initrd
}
menuentry "Xubuntu (safe graphics)" {
	set gfxpayload=keep
	linux	/casper/vmlinuz nomodeset file=/cdrom/preseed/xubuntu.seed maybe-ubiquity quiet splash ---
	initrd	/casper/initrd
}
menuentry "OEM install (for manufacturers)" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed only-ubiquity oem-config/enable=true quiet splash ---
	initrd	/casper/initrd
}
grub_platform
if [ "$grub_platform" = "efi" ]; then
menuentry 'Boot from next volume' {
	exit 1
}
menuentry 'UEFI Firmware Settings' {
	fwsetup
}
else
menuentry 'Test memory' {
	linux16 /boot/memtest86+.bin
}
fi
```

run

``` sh
cat ./mnt/boot/grub/loopback.cfg
```

show

```

menuentry "Try or Install Xubuntu" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed maybe-ubiquity iso-scan/filename=${iso_path} quiet splash ---
	initrd	/casper/initrd
}
menuentry "Xubuntu (safe graphics)" {
	set gfxpayload=keep
	linux	/casper/vmlinuz nomodeset file=/cdrom/preseed/xubuntu.seed maybe-ubiquity iso-scan/filename=${iso_path} quiet splash ---
	initrd	/casper/initrd
}
menuentry "OEM install (for manufacturers)" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed only-ubiquity oem-config/enable=true iso-scan/filename=${iso_path} quiet splash ---
	initrd	/casper/initrd
}
```


## casper

run

``` sh
ls ./mnt/casper -1
```

show

```
filesystem.manifest
filesystem.manifest-minimal-remove
filesystem.manifest-remove
filesystem.size
filesystem.squashfs
filesystem.squashfs.gpg
initrd
vmlinuz
```

## xubuntu.seed

run

``` sh
cat ./mnt/preseed/xubuntu.seed
```

show

```
# Enable extras.ubuntu.com.
d-i	apt-setup/extras	boolean true
# Install the Xubuntu desktop.
tasksel	tasksel/first	multiselect xubuntu-desktop
# No XFCE translation packages yet.
d-i	pkgsel/language-pack-patterns	string
```


##  tree

run

``` sh
tree ./mnt
```

show

```
./mnt
├── boot
│   ├── grub
│   │   ├── fonts
│   │   │   └── unicode.pf2
│   │   ├── grub.cfg
│   │   ├── i386-pc
│   │   │   ├── 915resolution.mod
│   │   │   ├── acpi.mod
│   │   │   ├── adler32.mod
│   │   │   ├── affs.mod
│   │   │   ├── afs.mod
│   │   │   ├── afsplitter.mod
│   │   │   ├── ahci.mod
│   │   │   ├── all_video.mod
│   │   │   ├── aout.mod
│   │   │   ├── archelp.mod
│   │   │   ├── ata.mod
│   │   │   ├── at_keyboard.mod
│   │   │   ├── backtrace.mod
│   │   │   ├── bfs.mod
│   │   │   ├── biosdisk.mod
│   │   │   ├── bitmap.mod
│   │   │   ├── bitmap_scale.mod
│   │   │   ├── blocklist.mod
│   │   │   ├── boot.mod
│   │   │   ├── bsd.mod
│   │   │   ├── bswap_test.mod
│   │   │   ├── btrfs.mod
│   │   │   ├── bufio.mod
│   │   │   ├── cat.mod
│   │   │   ├── cbfs.mod
│   │   │   ├── cbls.mod
│   │   │   ├── cbmemc.mod
│   │   │   ├── cbtable.mod
│   │   │   ├── cbtime.mod
│   │   │   ├── chain.mod
│   │   │   ├── cmdline_cat_test.mod
│   │   │   ├── cmosdump.mod
│   │   │   ├── cmostest.mod
│   │   │   ├── cmp.mod
│   │   │   ├── cmp_test.mod
│   │   │   ├── command.lst
│   │   │   ├── configfile.mod
│   │   │   ├── cpio_be.mod
│   │   │   ├── cpio.mod
│   │   │   ├── cpuid.mod
│   │   │   ├── crc64.mod
│   │   │   ├── cryptodisk.mod
│   │   │   ├── crypto.lst
│   │   │   ├── crypto.mod
│   │   │   ├── cs5536.mod
│   │   │   ├── ctz_test.mod
│   │   │   ├── datehook.mod
│   │   │   ├── date.mod
│   │   │   ├── datetime.mod
│   │   │   ├── diskfilter.mod
│   │   │   ├── disk.mod
│   │   │   ├── div.mod
│   │   │   ├── div_test.mod
│   │   │   ├── dm_nv.mod
│   │   │   ├── drivemap.mod
│   │   │   ├── echo.mod
│   │   │   ├── efiemu32.o
│   │   │   ├── efiemu64.o
│   │   │   ├── efiemu.mod
│   │   │   ├── ehci.mod
│   │   │   ├── elf.mod
│   │   │   ├── eltorito.img
│   │   │   ├── eval.mod
│   │   │   ├── exfat.mod
│   │   │   ├── exfctest.mod
│   │   │   ├── ext2.mod
│   │   │   ├── extcmd.mod
│   │   │   ├── f2fs.mod
│   │   │   ├── fat.mod
│   │   │   ├── fdt.lst
│   │   │   ├── file.mod
│   │   │   ├── font.mod
│   │   │   ├── freedos.mod
│   │   │   ├── fshelp.mod
│   │   │   ├── fs.lst
│   │   │   ├── functional_test.mod
│   │   │   ├── gcry_arcfour.mod
│   │   │   ├── gcry_blowfish.mod
│   │   │   ├── gcry_camellia.mod
│   │   │   ├── gcry_cast5.mod
│   │   │   ├── gcry_crc.mod
│   │   │   ├── gcry_des.mod
│   │   │   ├── gcry_dsa.mod
│   │   │   ├── gcry_idea.mod
│   │   │   ├── gcry_md4.mod
│   │   │   ├── gcry_md5.mod
│   │   │   ├── gcry_rfc2268.mod
│   │   │   ├── gcry_rijndael.mod
│   │   │   ├── gcry_rmd160.mod
│   │   │   ├── gcry_rsa.mod
│   │   │   ├── gcry_seed.mod
│   │   │   ├── gcry_serpent.mod
│   │   │   ├── gcry_sha1.mod
│   │   │   ├── gcry_sha256.mod
│   │   │   ├── gcry_sha512.mod
│   │   │   ├── gcry_tiger.mod
│   │   │   ├── gcry_twofish.mod
│   │   │   ├── gcry_whirlpool.mod
│   │   │   ├── gdb.mod
│   │   │   ├── geli.mod
│   │   │   ├── gettext.mod
│   │   │   ├── gfxmenu.mod
│   │   │   ├── gfxterm_background.mod
│   │   │   ├── gfxterm_menu.mod
│   │   │   ├── gfxterm.mod
│   │   │   ├── gptsync.mod
│   │   │   ├── gzio.mod
│   │   │   ├── halt.mod
│   │   │   ├── hashsum.mod
│   │   │   ├── hdparm.mod
│   │   │   ├── hello.mod
│   │   │   ├── help.mod
│   │   │   ├── hexdump.mod
│   │   │   ├── hfs.mod
│   │   │   ├── hfspluscomp.mod
│   │   │   ├── hfsplus.mod
│   │   │   ├── http.mod
│   │   │   ├── hwmatch.mod
│   │   │   ├── iorw.mod
│   │   │   ├── iso9660.mod
│   │   │   ├── jfs.mod
│   │   │   ├── jpeg.mod
│   │   │   ├── json.mod
│   │   │   ├── keylayouts.mod
│   │   │   ├── keystatus.mod
│   │   │   ├── ldm.mod
│   │   │   ├── legacycfg.mod
│   │   │   ├── legacy_password_test.mod
│   │   │   ├── linux16.mod
│   │   │   ├── linux.mod
│   │   │   ├── loadenv.mod
│   │   │   ├── loopback.mod
│   │   │   ├── lsacpi.mod
│   │   │   ├── lsapm.mod
│   │   │   ├── lsmmap.mod
│   │   │   ├── ls.mod
│   │   │   ├── lspci.mod
│   │   │   ├── luks2.mod
│   │   │   ├── luks.mod
│   │   │   ├── lvm.mod
│   │   │   ├── lzopio.mod
│   │   │   ├── macbless.mod
│   │   │   ├── macho.mod
│   │   │   ├── mda_text.mod
│   │   │   ├── mdraid09_be.mod
│   │   │   ├── mdraid09.mod
│   │   │   ├── mdraid1x.mod
│   │   │   ├── memdisk.mod
│   │   │   ├── memrw.mod
│   │   │   ├── minicmd.mod
│   │   │   ├── minix2_be.mod
│   │   │   ├── minix2.mod
│   │   │   ├── minix3_be.mod
│   │   │   ├── minix3.mod
│   │   │   ├── minix_be.mod
│   │   │   ├── minix.mod
│   │   │   ├── mmap.mod
│   │   │   ├── moddep.lst
│   │   │   ├── morse.mod
│   │   │   ├── mpi.mod
│   │   │   ├── msdospart.mod
│   │   │   ├── mul_test.mod
│   │   │   ├── multiboot2.mod
│   │   │   ├── multiboot.mod
│   │   │   ├── nativedisk.mod
│   │   │   ├── net.mod
│   │   │   ├── newc.mod
│   │   │   ├── nilfs2.mod
│   │   │   ├── normal.mod
│   │   │   ├── ntfscomp.mod
│   │   │   ├── ntfs.mod
│   │   │   ├── ntldr.mod
│   │   │   ├── odc.mod
│   │   │   ├── offsetio.mod
│   │   │   ├── ohci.mod
│   │   │   ├── part_acorn.mod
│   │   │   ├── part_amiga.mod
│   │   │   ├── part_apple.mod
│   │   │   ├── part_bsd.mod
│   │   │   ├── part_dfly.mod
│   │   │   ├── part_dvh.mod
│   │   │   ├── part_gpt.mod
│   │   │   ├── partmap.lst
│   │   │   ├── part_msdos.mod
│   │   │   ├── part_plan.mod
│   │   │   ├── part_sun.mod
│   │   │   ├── part_sunpc.mod
│   │   │   ├── parttool.lst
│   │   │   ├── parttool.mod
│   │   │   ├── password.mod
│   │   │   ├── password_pbkdf2.mod
│   │   │   ├── pata.mod
│   │   │   ├── pbkdf2.mod
│   │   │   ├── pbkdf2_test.mod
│   │   │   ├── pcidump.mod
│   │   │   ├── pci.mod
│   │   │   ├── pgp.mod
│   │   │   ├── plan9.mod
│   │   │   ├── play.mod
│   │   │   ├── png.mod
│   │   │   ├── priority_queue.mod
│   │   │   ├── probe.mod
│   │   │   ├── procfs.mod
│   │   │   ├── progress.mod
│   │   │   ├── pxechain.mod
│   │   │   ├── pxe.mod
│   │   │   ├── raid5rec.mod
│   │   │   ├── raid6rec.mod
│   │   │   ├── random.mod
│   │   │   ├── rdmsr.mod
│   │   │   ├── read.mod
│   │   │   ├── reboot.mod
│   │   │   ├── regexp.mod
│   │   │   ├── reiserfs.mod
│   │   │   ├── relocator.mod
│   │   │   ├── romfs.mod
│   │   │   ├── scsi.mod
│   │   │   ├── search_fs_file.mod
│   │   │   ├── search_fs_uuid.mod
│   │   │   ├── search_label.mod
│   │   │   ├── search.mod
│   │   │   ├── sendkey.mod
│   │   │   ├── serial.mod
│   │   │   ├── setjmp.mod
│   │   │   ├── setjmp_test.mod
│   │   │   ├── setpci.mod
│   │   │   ├── sfs.mod
│   │   │   ├── shift_test.mod
│   │   │   ├── signature_test.mod
│   │   │   ├── sleep.mod
│   │   │   ├── sleep_test.mod
│   │   │   ├── smbios.mod
│   │   │   ├── spkmodem.mod
│   │   │   ├── squash4.mod
│   │   │   ├── strtoull_test.mod
│   │   │   ├── syslinuxcfg.mod
│   │   │   ├── tar.mod
│   │   │   ├── terminal.lst
│   │   │   ├── terminal.mod
│   │   │   ├── terminfo.mod
│   │   │   ├── test_blockarg.mod
│   │   │   ├── testload.mod
│   │   │   ├── test.mod
│   │   │   ├── testspeed.mod
│   │   │   ├── tftp.mod
│   │   │   ├── tga.mod
│   │   │   ├── time.mod
│   │   │   ├── trig.mod
│   │   │   ├── tr.mod
│   │   │   ├── truecrypt.mod
│   │   │   ├── true.mod
│   │   │   ├── udf.mod
│   │   │   ├── ufs1_be.mod
│   │   │   ├── ufs1.mod
│   │   │   ├── ufs2.mod
│   │   │   ├── uhci.mod
│   │   │   ├── usb_keyboard.mod
│   │   │   ├── usb.mod
│   │   │   ├── usbms.mod
│   │   │   ├── usbserial_common.mod
│   │   │   ├── usbserial_ftdi.mod
│   │   │   ├── usbserial_pl2303.mod
│   │   │   ├── usbserial_usbdebug.mod
│   │   │   ├── usbtest.mod
│   │   │   ├── vbe.mod
│   │   │   ├── verifiers.mod
│   │   │   ├── vga.mod
│   │   │   ├── vga_text.mod
│   │   │   ├── video_bochs.mod
│   │   │   ├── video_cirrus.mod
│   │   │   ├── video_colors.mod
│   │   │   ├── video_fb.mod
│   │   │   ├── videoinfo.mod
│   │   │   ├── video.lst
│   │   │   ├── video.mod
│   │   │   ├── videotest_checksum.mod
│   │   │   ├── videotest.mod
│   │   │   ├── wrmsr.mod
│   │   │   ├── xfs.mod
│   │   │   ├── xnu.mod
│   │   │   ├── xnu_uuid.mod
│   │   │   ├── xnu_uuid_test.mod
│   │   │   ├── xzio.mod
│   │   │   ├── zfscrypt.mod
│   │   │   ├── zfsinfo.mod
│   │   │   ├── zfs.mod
│   │   │   └── zstd.mod
│   │   ├── loopback.cfg
│   │   └── x86_64-efi
│   │       ├── acpi.mod
│   │       ├── adler32.mod
│   │       ├── affs.mod
│   │       ├── afs.mod
│   │       ├── afsplitter.mod
│   │       ├── ahci.mod
│   │       ├── all_video.mod
│   │       ├── aout.mod
│   │       ├── appleldr.mod
│   │       ├── archelp.mod
│   │       ├── ata.mod
│   │       ├── at_keyboard.mod
│   │       ├── backtrace.mod
│   │       ├── bfs.mod
│   │       ├── bitmap.mod
│   │       ├── bitmap_scale.mod
│   │       ├── blocklist.mod
│   │       ├── boot.mod
│   │       ├── bsd.mod
│   │       ├── bswap_test.mod
│   │       ├── btrfs.mod
│   │       ├── bufio.mod
│   │       ├── cat.mod
│   │       ├── cbfs.mod
│   │       ├── cbls.mod
│   │       ├── cbmemc.mod
│   │       ├── cbtable.mod
│   │       ├── cbtime.mod
│   │       ├── chain.mod
│   │       ├── cmdline_cat_test.mod
│   │       ├── cmp.mod
│   │       ├── cmp_test.mod
│   │       ├── command.lst
│   │       ├── configfile.mod
│   │       ├── cpio_be.mod
│   │       ├── cpio.mod
│   │       ├── cpuid.mod
│   │       ├── crc64.mod
│   │       ├── cryptodisk.mod
│   │       ├── crypto.lst
│   │       ├── crypto.mod
│   │       ├── cs5536.mod
│   │       ├── ctz_test.mod
│   │       ├── datehook.mod
│   │       ├── date.mod
│   │       ├── datetime.mod
│   │       ├── diskfilter.mod
│   │       ├── disk.mod
│   │       ├── div.mod
│   │       ├── div_test.mod
│   │       ├── dm_nv.mod
│   │       ├── echo.mod
│   │       ├── efifwsetup.mod
│   │       ├── efi_gop.mod
│   │       ├── efinet.mod
│   │       ├── efi_uga.mod
│   │       ├── ehci.mod
│   │       ├── elf.mod
│   │       ├── eval.mod
│   │       ├── exfat.mod
│   │       ├── exfctest.mod
│   │       ├── ext2.mod
│   │       ├── extcmd.mod
│   │       ├── f2fs.mod
│   │       ├── fat.mod
│   │       ├── fdt.lst
│   │       ├── file.mod
│   │       ├── fixvideo.mod
│   │       ├── font.mod
│   │       ├── fshelp.mod
│   │       ├── fs.lst
│   │       ├── functional_test.mod
│   │       ├── gcry_arcfour.mod
│   │       ├── gcry_blowfish.mod
│   │       ├── gcry_camellia.mod
│   │       ├── gcry_cast5.mod
│   │       ├── gcry_crc.mod
│   │       ├── gcry_des.mod
│   │       ├── gcry_dsa.mod
│   │       ├── gcry_idea.mod
│   │       ├── gcry_md4.mod
│   │       ├── gcry_md5.mod
│   │       ├── gcry_rfc2268.mod
│   │       ├── gcry_rijndael.mod
│   │       ├── gcry_rmd160.mod
│   │       ├── gcry_rsa.mod
│   │       ├── gcry_seed.mod
│   │       ├── gcry_serpent.mod
│   │       ├── gcry_sha1.mod
│   │       ├── gcry_sha256.mod
│   │       ├── gcry_sha512.mod
│   │       ├── gcry_tiger.mod
│   │       ├── gcry_twofish.mod
│   │       ├── gcry_whirlpool.mod
│   │       ├── geli.mod
│   │       ├── gettext.mod
│   │       ├── gfxmenu.mod
│   │       ├── gfxterm_background.mod
│   │       ├── gfxterm_menu.mod
│   │       ├── gfxterm.mod
│   │       ├── gptsync.mod
│   │       ├── gzio.mod
│   │       ├── halt.mod
│   │       ├── hashsum.mod
│   │       ├── hdparm.mod
│   │       ├── hello.mod
│   │       ├── help.mod
│   │       ├── hexdump.mod
│   │       ├── hfs.mod
│   │       ├── hfspluscomp.mod
│   │       ├── hfsplus.mod
│   │       ├── http.mod
│   │       ├── iorw.mod
│   │       ├── iso9660.mod
│   │       ├── jfs.mod
│   │       ├── jpeg.mod
│   │       ├── json.mod
│   │       ├── keylayouts.mod
│   │       ├── keystatus.mod
│   │       ├── ldm.mod
│   │       ├── legacycfg.mod
│   │       ├── legacy_password_test.mod
│   │       ├── linux16.mod
│   │       ├── linuxefi.mod
│   │       ├── linux.mod
│   │       ├── loadbios.mod
│   │       ├── loadenv.mod
│   │       ├── loopback.mod
│   │       ├── lsacpi.mod
│   │       ├── lsefimmap.mod
│   │       ├── lsefi.mod
│   │       ├── lsefisystab.mod
│   │       ├── lsmmap.mod
│   │       ├── ls.mod
│   │       ├── lspci.mod
│   │       ├── lssal.mod
│   │       ├── luks2.mod
│   │       ├── luks.mod
│   │       ├── lvm.mod
│   │       ├── lzopio.mod
│   │       ├── macbless.mod
│   │       ├── macho.mod
│   │       ├── mdraid09_be.mod
│   │       ├── mdraid09.mod
│   │       ├── mdraid1x.mod
│   │       ├── memdisk.mod
│   │       ├── memrw.mod
│   │       ├── minicmd.mod
│   │       ├── minix2_be.mod
│   │       ├── minix2.mod
│   │       ├── minix3_be.mod
│   │       ├── minix3.mod
│   │       ├── minix_be.mod
│   │       ├── minix.mod
│   │       ├── mmap.mod
│   │       ├── moddep.lst
│   │       ├── morse.mod
│   │       ├── mpi.mod
│   │       ├── msdospart.mod
│   │       ├── mul_test.mod
│   │       ├── multiboot2.mod
│   │       ├── multiboot.mod
│   │       ├── nativedisk.mod
│   │       ├── net.mod
│   │       ├── newc.mod
│   │       ├── nilfs2.mod
│   │       ├── normal.mod
│   │       ├── ntfscomp.mod
│   │       ├── ntfs.mod
│   │       ├── odc.mod
│   │       ├── offsetio.mod
│   │       ├── ohci.mod
│   │       ├── part_acorn.mod
│   │       ├── part_amiga.mod
│   │       ├── part_apple.mod
│   │       ├── part_bsd.mod
│   │       ├── part_dfly.mod
│   │       ├── part_dvh.mod
│   │       ├── part_gpt.mod
│   │       ├── partmap.lst
│   │       ├── part_msdos.mod
│   │       ├── part_plan.mod
│   │       ├── part_sun.mod
│   │       ├── part_sunpc.mod
│   │       ├── parttool.lst
│   │       ├── parttool.mod
│   │       ├── password.mod
│   │       ├── password_pbkdf2.mod
│   │       ├── pata.mod
│   │       ├── pbkdf2.mod
│   │       ├── pbkdf2_test.mod
│   │       ├── pcidump.mod
│   │       ├── pgp.mod
│   │       ├── play.mod
│   │       ├── png.mod
│   │       ├── priority_queue.mod
│   │       ├── probe.mod
│   │       ├── procfs.mod
│   │       ├── progress.mod
│   │       ├── raid5rec.mod
│   │       ├── raid6rec.mod
│   │       ├── random.mod
│   │       ├── rdmsr.mod
│   │       ├── read.mod
│   │       ├── reboot.mod
│   │       ├── regexp.mod
│   │       ├── reiserfs.mod
│   │       ├── relocator.mod
│   │       ├── romfs.mod
│   │       ├── scsi.mod
│   │       ├── search_fs_file.mod
│   │       ├── search_fs_uuid.mod
│   │       ├── search_label.mod
│   │       ├── search.mod
│   │       ├── serial.mod
│   │       ├── setjmp.mod
│   │       ├── setjmp_test.mod
│   │       ├── setpci.mod
│   │       ├── sfs.mod
│   │       ├── shift_test.mod
│   │       ├── signature_test.mod
│   │       ├── sleep.mod
│   │       ├── sleep_test.mod
│   │       ├── smbios.mod
│   │       ├── spkmodem.mod
│   │       ├── squash4.mod
│   │       ├── strtoull_test.mod
│   │       ├── syslinuxcfg.mod
│   │       ├── tar.mod
│   │       ├── terminal.lst
│   │       ├── terminal.mod
│   │       ├── terminfo.mod
│   │       ├── test_blockarg.mod
│   │       ├── testload.mod
│   │       ├── test.mod
│   │       ├── testspeed.mod
│   │       ├── tftp.mod
│   │       ├── tga.mod
│   │       ├── time.mod
│   │       ├── tpm.mod
│   │       ├── trig.mod
│   │       ├── tr.mod
│   │       ├── true.mod
│   │       ├── udf.mod
│   │       ├── ufs1_be.mod
│   │       ├── ufs1.mod
│   │       ├── ufs2.mod
│   │       ├── uhci.mod
│   │       ├── usb_keyboard.mod
│   │       ├── usb.mod
│   │       ├── usbms.mod
│   │       ├── usbserial_common.mod
│   │       ├── usbserial_ftdi.mod
│   │       ├── usbserial_pl2303.mod
│   │       ├── usbserial_usbdebug.mod
│   │       ├── usbtest.mod
│   │       ├── video_bochs.mod
│   │       ├── video_cirrus.mod
│   │       ├── video_colors.mod
│   │       ├── video_fb.mod
│   │       ├── videoinfo.mod
│   │       ├── video.lst
│   │       ├── video.mod
│   │       ├── videotest_checksum.mod
│   │       ├── videotest.mod
│   │       ├── wrmsr.mod
│   │       ├── xfs.mod
│   │       ├── xnu.mod
│   │       ├── xnu_uuid.mod
│   │       ├── xnu_uuid_test.mod
│   │       ├── xzio.mod
│   │       ├── zfscrypt.mod
│   │       ├── zfsinfo.mod
│   │       ├── zfs.mod
│   │       └── zstd.mod
│   └── memtest86+.bin
├── boot.catalog
├── casper
│   ├── filesystem.manifest
│   ├── filesystem.manifest-minimal-remove
│   ├── filesystem.manifest-remove
│   ├── filesystem.size
│   ├── filesystem.squashfs
│   ├── filesystem.squashfs.gpg
│   ├── initrd
│   └── vmlinuz
├── dists
│   ├── jammy
│   │   ├── main
│   │   │   ├── binary-amd64
│   │   │   │   ├── Packages.gz
│   │   │   │   └── Release
│   │   │   ├── binary-i386
│   │   │   │   ├── Packages.gz
│   │   │   │   └── Release
│   │   │   └── source
│   │   ├── multiverse
│   │   │   ├── binary-amd64
│   │   │   │   ├── Packages.gz
│   │   │   │   └── Release
│   │   │   ├── binary-i386
│   │   │   │   ├── Packages.gz
│   │   │   │   └── Release
│   │   │   └── source
│   │   ├── Release
│   │   ├── Release.gpg
│   │   ├── restricted
│   │   │   ├── binary-amd64
│   │   │   │   ├── Packages.gz
│   │   │   │   └── Release
│   │   │   ├── binary-i386
│   │   │   │   ├── Packages.gz
│   │   │   │   └── Release
│   │   │   └── source
│   │   └── universe
│   │       ├── binary-amd64
│   │       │   ├── Packages.gz
│   │       │   └── Release
│   │       ├── binary-i386
│   │       │   ├── Packages.gz
│   │       │   └── Release
│   │       └── source
│   ├── stable -> jammy
│   └── unstable -> jammy
├── EFI
│   └── boot
│       ├── bootx64.efi
│       ├── grubx64.efi
│       └── mmx64.efi
├── install
├── md5sum.txt
├── pool
│   ├── main
│   │   ├── b
│   │   │   ├── b43-fwcutter
│   │   │   │   └── b43-fwcutter_019-7build2_amd64.deb
│   │   │   ├── binutils
│   │   │   │   ├── binutils_2.38-3ubuntu1_amd64.deb
│   │   │   │   ├── binutils-common_2.38-3ubuntu1_amd64.deb
│   │   │   │   ├── binutils-x86-64-linux-gnu_2.38-3ubuntu1_amd64.deb
│   │   │   │   ├── libbinutils_2.38-3ubuntu1_amd64.deb
│   │   │   │   ├── libctf0_2.38-3ubuntu1_amd64.deb
│   │   │   │   └── libctf-nobfd0_2.38-3ubuntu1_amd64.deb
│   │   │   └── build-essential
│   │   │       └── build-essential_12.9ubuntu3_amd64.deb
│   │   ├── d
│   │   │   ├── dkms
│   │   │   │   └── dkms_2.8.7-2ubuntu2_all.deb
│   │   │   └── dpkg
│   │   │       └── dpkg-dev_1.21.1ubuntu2_all.deb
│   │   ├── f
│   │   │   └── fakeroot
│   │   │       ├── fakeroot_1.28-1ubuntu1_amd64.deb
│   │   │       └── libfakeroot_1.28-1ubuntu1_amd64.deb
│   │   ├── g
│   │   │   ├── gcc-11
│   │   │   │   ├── g++-11_11.2.0-19ubuntu1_amd64.deb
│   │   │   │   ├── gcc-11_11.2.0-19ubuntu1_amd64.deb
│   │   │   │   ├── libasan6_11.2.0-19ubuntu1_amd64.deb
│   │   │   │   ├── libgcc-11-dev_11.2.0-19ubuntu1_amd64.deb
│   │   │   │   ├── libstdc++-11-dev_11.2.0-19ubuntu1_amd64.deb
│   │   │   │   └── libtsan0_11.2.0-19ubuntu1_amd64.deb
│   │   │   ├── gcc-12
│   │   │   │   ├── libatomic1_12-20220319-1ubuntu1_amd64.deb
│   │   │   │   ├── libcc1-0_12-20220319-1ubuntu1_amd64.deb
│   │   │   │   ├── libitm1_12-20220319-1ubuntu1_amd64.deb
│   │   │   │   ├── liblsan0_12-20220319-1ubuntu1_amd64.deb
│   │   │   │   └── libubsan1_12-20220319-1ubuntu1_amd64.deb
│   │   │   ├── gcc-defaults
│   │   │   │   ├── g++_11.2.0-1ubuntu1_amd64.deb
│   │   │   │   └── gcc_11.2.0-1ubuntu1_amd64.deb
│   │   │   └── glibc
│   │   │       ├── libc6-dev_2.35-0ubuntu3_amd64.deb
│   │   │       ├── libc-dev-bin_2.35-0ubuntu3_amd64.deb
│   │   │       └── libc-devtools_2.35-0ubuntu3_amd64.deb
│   │   ├── l
│   │   │   ├── linux
│   │   │   │   └── linux-libc-dev_5.15.0-25.25_amd64.deb
│   │   │   └── lto-disabled-list
│   │   │       └── lto-disabled-list_24_all.deb
│   │   ├── liba
│   │   │   ├── libalgorithm-diff-perl
│   │   │   │   └── libalgorithm-diff-perl_1.201-1_all.deb
│   │   │   ├── libalgorithm-diff-xs-perl
│   │   │   │   └── libalgorithm-diff-xs-perl_0.04-6build3_amd64.deb
│   │   │   └── libalgorithm-merge-perl
│   │   │       └── libalgorithm-merge-perl_0.08-3_all.deb
│   │   ├── libn
│   │   │   └── libnsl
│   │   │       └── libnsl-dev_1.3.0-2build2_amd64.deb
│   │   ├── libt
│   │   │   └── libtirpc
│   │   │       └── libtirpc-dev_1.3.2-2build1_amd64.deb
│   │   ├── libx
│   │   │   └── libxcrypt
│   │   │       └── libcrypt-dev_4.4.27-1_amd64.deb
│   │   ├── m
│   │   │   ├── make-dfsg
│   │   │   │   └── make_4.3-4.1build1_amd64.deb
│   │   │   └── manpages
│   │   │       └── manpages-dev_5.10-1ubuntu1_all.deb
│   │   ├── r
│   │   │   └── rpcsvc-proto
│   │   │       └── rpcsvc-proto_1.4.2-0ubuntu6_amd64.deb
│   │   ├── s
│   │   │   └── setserial
│   │   │       └── setserial_2.17-53build2_amd64.deb
│   │   └── u
│   │       └── ubiquity
│   │           ├── oem-config_22.04.15_all.deb
│   │           └── oem-config-gtk_22.04.15_all.deb
│   ├── restricted
│   │   └── b
│   │       └── bcmwl
│   │           └── bcmwl-kernel-source_6.30.223.271+bdcom-0ubuntu8_amd64.deb
│   └── universe
│       └── w
│           ├── wvdial
│           │   └── wvdial_1.61-6_amd64.deb
│           └── wvstreams
│               ├── libuniconf4.6_4.6.1-15build1_amd64.deb
│               ├── libwvstreams4.6-base_4.6.1-15build1_amd64.deb
│               └── libwvstreams4.6-extras_4.6.1-15build1_amd64.deb
├── preseed
│   └── xubuntu.seed
└── ubuntu -> .

76 directories, 645 files

```


## Link

* [https://releases.ubuntu.com/22.04/](https://releases.ubuntu.com/22.04/)
* [https://cdimage.ubuntu.com/](https://cdimage.ubuntu.com/)
* Manjaro / Wiki / Burn an ISO File / [Writing to a USB Stick in Linux](https://wiki.manjaro.org/index.php/Burn_an_ISO_File#Writing_to_a_USB_Stick_in_Linux)
* [https://wiki.archcraft.io/docs/boot-iso/boot-with-usb](https://wiki.archcraft.io/docs/boot-iso/boot-with-usb)
* [https://maboxlinux.org/users-guide/download-and-installation/](https://maboxlinux.org/users-guide/download-and-installation/)
