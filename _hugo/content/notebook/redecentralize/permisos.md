---
categories: [ nb-redecentralize ]

title: "1. Permisos de usuario"
keywords: 

publishdate: 2016-01-01
date: 2016-01-01
---

# Windows

- [CONF] En el host: usuario.
- [INFO] IP o nombre del equipo. La IP puede consultarse mediante `ipconfig` en la consola (*Inicio -> cmd.exe*) ([más info sobre `ipconfig`](https://technet.microsoft.com/en-us/library/bb490921.aspx)). El nombre del host puede consultarse en *Equipo -> Propiedades -> Nombre del equipo*.
- [INFO] Usuario y contraseña en el host.
- [CONF] En el host: recurso con permisos de, al menos, lectura.
- [CONF] Verificar que el puerto 139 o 445 no está bloqueado ([se utilizan](https://en.wikipedia.org/wiki/Net_use): [SMB](https://es.wikipedia.org/wiki/Server_Message_Block) y [NetBios](https://es.wikipedia.org/wiki/NetBIOS)).

# Linux

los ficheros/directos que empiezan por `.` son ocultos (no se muestran con `ls`, es necesario `ls -a`)

    /home/<usuario>/
	~/

    sudo mkdir /home/shared
    sudo groupadd gded
    sudo chown :gded /home/shared
    sudo chmod 770 /home/shared

    sudo usermod -a -G gded 1138-4EB

    cat /etc/group
	
    du -sh */
    tree -d
