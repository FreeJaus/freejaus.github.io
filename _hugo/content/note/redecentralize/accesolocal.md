---
categories: [ nb-redecentralize ]

title: "2. Acceso local"
keywords: 

publishdate: 2016-01-01
date: 2016-01-01
---

|     | FAT16 | FAT32 | NTFS | EXT2 | EXT3 | EXT4 |
| --- | ---   | ---   | ---  | ---  | ---  | ---  |
| Win | ???   | ???   | ???  | ???  | ???  | ???  |
| Lin | ???   | ???   | ???  | ???  | ???  | ???  |

	MBR
	GTP

    sudo fdisk -l
    sudo mkdir -p /run/media/1138-4EB/Data
    sudo mount -t ntfs-3g /dev/sda4 /run/media/1138-4EB/Data
	
¿Unidades cifradas?

 - CD/DVD (PATA/SATA)
 - Pendrive (USB)
 - Disco duro externo (USB/eSATA)
