---
title: Boot ISO By GRUB
nav_order: 7030
has_children: false
parent: 下載
grand_parent: 入門
---


# Boot ISO By GRUB

## 範例

| GRUB Boot ISO 範例 | 設定檔路徑 | 是否需要執行 update-grub |
| --- | --- | --- |
| demo_40_custom / [latest](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_40_custom/Ubuntu/latest/) | [/etc/grub.d/40_custom](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_40_custom/Ubuntu/latest/40_custom) | 修改後，需要執行 `sudo update-grub` |
| demo_41_custom / [latest](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Ubuntu/latest/) | [/boot/grub/custom.cfg](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Ubuntu/latest/custom.cfg) | 修改後，**不需要**執行 `sudo update-grub` |


## GRUB Menu Entry / Boot ISO 樣板

``` sh
menuentry "Ubuntu 22.04 Daily Live ISO" --class Ubuntu {
	set iso_file="/opt/iso/ubuntu/daily-live/ubuntu/jammy-desktop-amd64.iso"
	search --no-floppy -f --set=iso_partition $iso_file
	probe -u $iso_partition --set=iso_partition_uuid
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file
	set boot_option=""
	#set boot_option="locale=zh_TW"
	#set boot_option="quiet splash"
	linux (loop)/casper/vmlinuz iso-scan/filename=$iso_file boot=casper $boot_option
	initrd (loop)/casper/initrd
}
```


## See Also

* Grub 探索筆記 / [GRUB Boot ISO 範例](https://samwhelp.github.io/note-about-grub/read/howto/boot_iso.html)
