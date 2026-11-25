
# Linux Logical Volume Management (LVM)

## Introduction
LVM provides flexible disk storage management by combining physical storage devices into logical volumes.

## Main Components

1. Physical Volume (PV): A disk or partition initialized for LVM.
2. Volume Group (VG): A storage pool containing physical volumes.
3. Logical Volume (LV): A virtual partition created from a volume group.

## LVM Workflow

Physical Disk → Physical Volume → Volume Group → Logical Volume → Filesystem

## Useful Commands

Display physical volumes:
```bash
sudo pvs
