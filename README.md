# Arch Install Method!

Download arch_base.sh -> [arch_base.sh](https://github.com/bakedtoastplease/arch-install-new/arch_base.sh)
Using:
```
nano arch_base.sh
> save with CTRL+O, Enter, CTRL+X
chmod +x arch_base.sh
./arch_base.sh
```
> ⚠️ Possible dangers in arch_base.sh
Wrong partitions (/dev/sda1, /dev/sda2)
If you put the wrong disk/partition, you can overwrite another OS or delete your data.
Always check with lsblk before running the script.
umount -R /mnt
If you had something important mounted on /mnt, it will be unmounted (not deleted, but still).
Formatting is not included
This script assumes your partitions are already formatted (sda1 = FAT32, sda2 = ext4).
If not formatted → you may get errors later.
Network required!!!
If your internet drops, pacstrap will fail and you’ll have an incomplete system.
No encryption or LVM
Script is minimal — it doesn’t handle secure setups like full disk encryption or LVM.

✅ If you only use this on a clean VM or a wiped disk, it’s safe.
⚠️ If you run it on your daily PC with important files — big risk.
