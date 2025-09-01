#!/bin/bash
set -e

# Диск можно поменять если у тебя не /dev/sda
EFI_PART="/dev/sda1"
ROOT_PART="/dev/sda2"

echo "[*] Mounting..."
umount -R /mnt || true
mount $ROOT_PART /mnt
mkdir -p /mnt/boot
mount $EFI_PART /mnt/boot

echo "[*] Installing base system..."
pacstrap /mnt base linux linux-firmware nano vim networkmanager

echo "[*] Generating fstab..."
genfstab -U /mnt >> /mnt/etc/fstab

echo "[*] Checking /bin/bash..."
if [ ! -f /mnt/bin/bash ]; then
    echo "[!] Error: /bin/bash not found, installation got bad!"
    exit 1
fi

echo "[*] Loading system!..."
arch-chroot /mnt
