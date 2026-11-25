# Linux Boot Process

## Introduction
The Linux boot process describes the steps performed when a computer starts and loads the operating system.

## Boot Stages

1. BIOS/UEFI initializes hardware.
2. Bootloader (usually GRUB) loads the Linux kernel.
3. Kernel initializes memory, devices and drivers.
4. Initramfs provides temporary root filesystem support.
5. The init system (usually systemd) starts services.
6. Login screen or terminal becomes available.

## Useful Commands

Check boot time:
```bash
systemd-analyze
