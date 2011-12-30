---
categories: [ nb-redecentralize ]

title: "5. Sincronización"
keywords: 

publishdate: 2016-01-01
date: 2016-01-01
---
 
# Sincronización de ficheros y copias de seguridad

http://www.increa.com/computers/totalcommander-linux-alternatives/

## [Comparación de herramientas de comparación de directorios y ficheros](https://en.wikipedia.org/wiki/Comparison_of_file_comparison_tools)

    diff
	diff3
	winmerge
    meld

## [Comparación de herramientas de sincronización de directorios](https://en.wikipedia.org/wiki/Comparison_of_file_synchronization_software)

    csync
    csyn2

## owncloud

owncloud - ehubox

## [Syncthing](https://syncthing.net/)

 - [syncthing.net/security](https://syncthing.net/security.html)
 - [docs.syncthing.net/users/](http://docs.syncthing.net/users/)
   - [security](http://docs.syncthing.net/users/security.html)
   - [autostart](http://docs.syncthing.net/users/autostart.html)
     - [syncthing-gtk](https://github.com/syncthing/syncthing-gtk)
     - [SyncTrayzor](https://github.com/canton7/SyncTrayzor) ([security](https://github.com/canton7/SyncTrayzor/tree/master/security))
   - [ignoring](http://docs.syncthing.net/users/ignoring.html): [Usefil .stignore patterns](https://forum.syncthing.net/t/useful-stignore-patterns/1175) (the first pattern that matches will decide the fate of a given file).
   - [faq](http://docs.syncthing.net/users/faq.html#faq)
     - How can I exclude files with brackets ([]) in the name?
     - How do I access the web GUI from another computer?
   - [discosrv](http://docs.syncthing.net/users/discosrv.html)
   - [foldermaster](http://docs.syncthing.net/users/foldermaster.html) (clicking this button will enforce the master’s current state on the rest of the cluster: any changes made to files will be overwritten by the version on the master, any files that don’t exist on the master will be deleted, and so on)
 - [Getting Syncthing running with a central file server running CentOS 7 minimal setup and windows clients](https://forum.syncthing.net/t/getting-syncthing-running-with-a-central-file-server-running-centos-7-minimal-setup-and-windows-clients/1429)
 - Para compartir configuración entre Windows y GNU/Linux:
   - Montar partición
   - Crear link simbólico de <path> a la carpeta de configuración en la partición montada
   - `syncthing -home <path>`
 - No soporta múltiples carpetas locales para un mismo directorio.
  
### Example output log of first execution en Windows
   
    [start] 07:39:47 INFO: Generating RSA key and certificate for syncthing...
    [BV3U5] 07:39:50 INFO: syncthing v0.11.26 "Aluminium Ant" (go1.4.2 windows-amd64 default) unknown-user@syncthing-builder 2015-10-02 06:08:07 UTC
    [BV3U5] 07:39:50 INFO: My ID: XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX
    [BV3U5] 07:39:50 INFO: No config file; starting with empty defaults
    [BV3U5] 07:39:50 INFO: Edit C:\Users\<usuario>\AppData\Local\Syncthing\config.xml to taste or use the GUI
    [BV3U5] 07:39:50 INFO: Database block cache capacity 32478 KiB
    [BV3U5] 07:39:50 OK: Ready to synchronize default (read-write)
    [BV3U5] 07:39:50 INFO: Starting web GUI on http://127.0.0.1:8384/
    [BV3U5] 07:39:50 INFO: Loading HTTPS certificate: open C:\Users\<usuario>\AppData\Local\Syncthing\https-cert.pem: El sistema no puede encontrar el archivo especificado.
    [BV3U5] 07:39:50 INFO: Creating new HTTPS certificate
    [BV3U5] 07:39:50 INFO: Generating RSA key and certificate for <nombredelequipo>...
    [BV3U5] 07:39:50 INFO: Completed initial scan (rw) of folder default
    [BV3U5] 07:39:51 INFO: Starting local discovery announcements
    [BV3U5] 07:39:51 INFO: Starting global discovery announcements
    [BV3U5] 07:39:51 INFO: Device XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX is "<nombredelequipo>" at [dynamic]
    [BV3U5] 07:39:51 INFO: API listening on 127.0.0.1:8384
    [BV3U5] 07:40:01 INFO: No UPnP device detected
   
### Tunneling via SSH

If you have SSH access to the machine running Syncthing but would rather not open the web GUI port to the outside world, you can access it through a SSH tunnel instead. You can start a tunnel with a command like the following:

    ssh -L 9999:localhost:8384 machine

This will bind to your local port 9999 and forward all connections from there to port 8384 on the target machine. This still works even if Syncthing is bound to listen on localhost only.

## [rsync](https://rsync.samba.org/) & [rsnapshop](http://rsnapshot.org/)

> Similar to rcp and scp, [rsync](https://en.wikipedia.org/wiki/Rsync) requires the specification of a source and of a destination; either of them may be remote, but not both. By default, rsync uses the remote-shell program SSH for its communication. It can be configured to use a different remote-shell program, or to contact an rsync daemon directly via TCP, which per default then is via TCP port 873.

[rsync - Linux man page](http://linux.die.net/man/1/rsync)

    rsync -vr /run/media/1138-4EB/CLIFF/* /run/media/1138-4EB/Data/CLIFF_bck/
    rsync -vrzP --bwlimit=1000

> rsnapshot is a filesystem snapshot utility based on rsync, that makes it easy to make periodic snapshots of local machines, and remote machines over ssh.

incremental transfer

> To protect your data, it is highly suggested to first try a run using the `--dry-run` option (`-n`) to see what files are going to be deleted.

    rsync -az --progress --delete --force --dry-run SOURCE DEST
    rsync -az --progress --delete --force SOURCE DEST

    # To use --delete this form should be used:
    rsync -avz /src/foo /dest
	# instead of:
    rsync -avz /src/foo/ /dest/foo

    -e, --rsh=COMMAND           specify the remote shell to use
        --rsync-path=PROGRAM    specify the rsync to run on remote machine
        --existing              skip creating new files on receiver
        --ignore-existing       skip updating files that exist on receiver
        --remove-source-files   sender removes synchronized files (non-dir)
        --del                   an alias for --delete-during
        --delete                delete extraneous files from dest dirs
        --delete-before         receiver deletes before xfer, not during
        --delete-during         receiver deletes during the transfer
        --delete-delay          find deletions during, delete after
        --delete-after          receiver deletes after transfer, not during
        --delete-excluded       also delete excluded files from dest dirs
        --ignore-missing-args   ignore missing source args without error
        --delete-missing-args   delete missing source args from destination
        --ignore-errors         delete even if there are I/O errors
        --force                 force deletion of dirs even if not empty
        --max-delete=NUM        don't delete more than NUM files
        --max-size=SIZE         don't transfer any file larger than SIZE
        --min-size=SIZE         don't transfer any file smaller than SIZE
        --partial               keep partially transferred files
        --partial-dir=DIR       put a partially transferred file into DIR
        --delay-updates         put all updated files into place at end
	
## [Unison](https://www.cis.upenn.edu/~bcpierce/unison/)

[Unison File Synchronizer - User Manual and Reference Guide: Tutorial, Version 2.48.3](http://www.seas.upenn.edu/~bcpierce/unison/download/releases/stable/unison-manual.html#tutorial)

 - [Native compiled versions](http://alan.petitepomme.net/unison/index.html), on Windows GTK+>=2.12 is required.
 - Cygwin (MinGW)
