---
categories: [ nb-redecentralize ]

title: "3. Acceso remoto"
keywords: 

publishdate: 2016-01-01
date: 2016-01-01
---

|     | Win | Lin | Win-VM-Lin | Win-WM-Win | Lin-WM-Lin | Lin-WM-Win |
| --- | --- | --- | ---        | ---        | ---        | ---        |
| Win | A   | B   | ???        | ???        | B*         | B*         |
| Lin | C   | D   | ???        | ???        | D*         | D*         |
| And | ??? | ??? | ???        | ???        | ???        | ???        |

Nautilus? Dolphin?

### A: Win-Win

#### Acceso a directorios:

 - Explorador de archivos: `Red`, en el árbol, o `\\<nombreoipdelhost>` en la barra de direcciones. Se deben introducir el nombre de usuario en el host y la contraseña correspondiente. Se muestran todos los recursos compartidos y se deberá acceder de forma gráfica al recurso compartido. Alternativamente, se puede acceder directamente a un recurso concreto indicando ``\\<nombreoipdelhost>\<nombredelrecurso>` en la barra de direcciones.
 - Añadir como unidad de red: en el explorador de archivos, click dch sobre *`Equipo` o `Red` -> Conectar a unidad de red...*; o en la consola (*Inicio -> cmd.exe*), `net use <letra>: \\<nombreoipdelhost\<nombredelrecurso>`, donde `<letra>` es la ruta de acceso deseada ([más info sobre `NET use`](https://technet.microsoft.com/es-es/library/gg651155%28v=ws.10%29.aspx), y sobre [cómo ejecutarlo desde Cygwin](http://stackoverflow.com/questions/2238935/cygwins-bash-cant-run-net-use-user-command)). Se deben introducir el nombre de usuario en el host y la contraseña correspondiente. Se puede acceder al recurso como a cualquier otra unidad.
 - Aplicaciones con interfaz gráfica como [Double Commander](http://doublecmd.sourceforge.net/) permiten explorar la `Red` (y requerir permisos), pero no añadir unidades.
 - Aplicaciones de terminal como [CygWin](https://www.cygwin.com/) o [Git Bash](https://git-for-windows.github.io/), requieren haber añadido el recurso previamente como unidad de red. Se puede acceder al recurso mediante `/cygdrive/<letra>` y `/<letra>`, respectivamente.

#### Escritorio remoto:

 - [CONF] En el host: habilitar el acceso por escritorio remoto.
 - [CONF] Verificar que el puerto 3389 no está bloqueado (se utiliza [*Remote Desktop Protocol* - RDP](https://en.wikipedia.org/wiki/Remote_Desktop_Protocol)).
 - *Inicio -> Conexión a Escritorio remoto*. Se deben introducir `<nombreoipdelhost>` en el apartado *Equipo* y `<nombreoipdelhost>\<usuario>` en *Usuario*. Se solicita la contraseña, y una vez introducida se abre una nueva ventana conteniendo el escritorio del host. El portapapeles es compartido, y pueden transferirse ficheros entre el cliente y el host de forma gráfica.

#### Ejecución de aplicaciones
 
 ???
 
### B: Win-Lin

Además de las aplicaciones específicas para Windows, los siguientes proyectos permiten ejecutar algunas comunes en entornos GNU/Linux:

 - [Cygwin](https://www.cygwin.com/): colección de herramientas para proporcionar un comportamiento similar a los sistemas Unix en Microsoft Windows, recompilando a partir de las fuentes software que ejecuta en sistemas POSIX. Se busca compatibilidad antes que rendimiento. Las aplicaciones funcionan sobre una librería DLL, distribuida con Cygwin.
 - [MSYS | MinGW](http://www.mingw.org/wiki/msys): fork de la versión 1.3.3 de Cygwin para priorizar las simplicidad y el rendimiento. No provee las APIs POSIX que no son fácilmente implementables en la API de Windows. Las aplicaciones no requieren una capa de compatibilidad, ya que se compilan con llamadas directas a la API de Windows. [Git for Windows](https://git-for-windows.github.io/) está basado en MinGW.

Salvo que se indique lo contrario, a lo largo de esta la sección (Win-Lin) se presupone que se está utilizando alguna de las soluciones de terminal anteriores.
 
#### [Secure Shell - SSH](https://en.wikipedia.org/wiki/Secure_Shell)

SSH es un protocolo para acceder a máquinas remotas a través de una red. Permite manejar por completo el host mediante un intérprete de comandos, y también puede redirigir el tráfico de X para poder ejecutar programas gráficos. Además, permite copiar datos de forma segura, gestionar claves RSA para no escribir claves al conectar a los dispositivos y pasar los datos de cualquier otra aplicación por un canal seguro tunelizado mediante SSH.

La implementación libre por excelencia es [OpenSSH](http://www.openssh.com/), que incluye:

 - [ssh](http://www.openbsd.org/cgi-bin/man.cgi/OpenBSD-current/man1/slogin.1?query=ssh&sec=1): replaces rlogin and telnet
 - [scp](http://www.openbsd.org/cgi-bin/man.cgi?query=scp&sektion=1): replaces rcp
 - [sftp](http://www.openbsd.org/cgi-bin/man.cgi?query=sftp&sektion=1): replaces ftp
 - [sshd](http://www.openbsd.org/cgi-bin/man.cgi?query=sshd&sektion=8): the server side of the package
 - other utilities: [ssh-add](http://www.openbsd.org/cgi-bin/man.cgi?query=ssh-add&sektion=1), [ssh-agent](http://www.openbsd.org/cgi-bin/man.cgi?query=ssh-agent&sektion=1), [ssh-keygen](http://www.openbsd.org/cgi-bin/man.cgi?query=ssh-keygen&sektion=1), [sftp-server](http://www.openbsd.org/cgi-bin/man.cgi?query=sftp-server&sektion=8)... 

[Dropbear SSH](https://matt.ucc.asn.au/dropbear/dropbear.html) es una alternativa a OpenSSH en entornos empotrados (con pocos recursos de memoria y/o procesamiento). Es un componente de [OpenWrt](https://openwrt.org/), por ejemplo.
 
##### Configuración del host - sshd
 
Para poder acceder a un equipo mediante SSH, en éste debe estar corriendo `sshd`. Para lanzarlo, basta con ejecutar el comando `sshd <rutadesshd>` ([sshd re-exec requires execution with an absolute path](http://systemadmin.es/2013/06/sshd-re-exec-requires-execution-with-an-absolute-path)). Para no tener que hacerlo después de cada reinicio, puede incluirse como servicio en la distribución que estemos utilizando (p. ej. [docs.fedoraproject.org - Starting an OpenSSH Server](https://docs.fedoraproject.org/en-US/Fedora/22/html/System_Administrators_Guide/s2-ssh-configuration-sshd.html)), lo que nos ofrecerá mayores posibilidades de monitorización y registro.

En un entorno de pruebas no reviste mayor gravedad, pero antes de dejar el servicio corriendo en un equipo sensible, debe revisarse la configuración en `/etc/ssh/sshd_config`. Puede utilizarse cualquier editor de texto, pero se requieren permisos de administración. Algunos de los campos a tener en consideración son:
 
 - `#Protocol 2`: la primera versión es [insegura(https://en.wikipedia.org/wiki/Secure_Shell).
 - `#PermitRootLogin no`: para evitar el acceso con privilegios de superadministración.
 - `#AllowUsers` o `DenyUsers`: para no habilitar el acceso a todos los usuarios.
 - `#PasswordAuthentication yes`: para evitar el acceso por contraseña, ya que viaja en plano (aunque siempre a través de un tunel). Se debe cambiar este parámetro una vez se haya añadido la clave pública de algún usuario. De lo contrario, no se podrá acceder de forma remota.
   - Si es `yes`:
     - Cliente sin pareja de claves: se solicita contraseña del usuario en el host.
	 - Cliente con pareja de claves: se utilizan. Si no funciona (por errores de configuración, o por introducir una *passphrase* incorrecta), se solicita la contraseña del usuario en el host.
   - Si es `no`:
     - Cliente sin pareja de claves: no se permite la conexión.
	 - Cliente con pareja de claves: se utilizan. Si no funciona, no se permite la conexión.
 - `#PermitEmptyPasswords no`: por razones evidentes.
 - `#X11Forwarding no`: para evitar la redirección del tráfico de X.
 - [Hacker News - Why putting SSH on another port than 22 is a bad idea](https://news.ycombinator.com/item?id=6615734)
 - ...

##### ssh-keygen

 - [SSH authentication with your PGP key](http://budts.be/weblog/2012/08/ssh-authentication-with-your-pgp-key)

Las parejas de claves de un usuario se almacenan por defecto en `~/.ssh/`. Se puede consultar si existe alguna mediante `ls -la ~/.ssh` en la terminal, o a través de un explorador gráfico. Cada pareja se almacenan en dos ficheros con el mismo nombre: la clave privada no tiene extensión, y la pública termina en `.pub`.

`ssh-keygen` permite generar parejas de claves mediante un comando, donde se indican el tipo de algoritmo ([RSA vs DSA vs ECDSA vs Ed25519](http://security.stackexchange.com/questions/5096/rsa-vs-dsa-for-ssh-authentication-keys)), la longitud en bits, y un comentario para identificar la pareja (una dirección de e-mail, por ejemplo):

    $ cd ~/.ssh
    $ ssh-keygen -t rsa -b 4096 -C "<comment>"
    Enter file in which to save the key (/<homedelusuario>/.ssh/id_rsa): [introducir ruta y nombre, y/o presionar enter]
    Enter passphrase (empty for no passphrase): [introducir contraseña]
    Enter same passphrase again: [introducir contraseña de nuevo]
	Your identification has been saved in /<homedelusuario>/.ssh/<nombredelapareja>.
    Your public key has been saved in /<homedelusuario>/.ssh/<nombredelapareja>.pub.
    The key fingerprint is:
    SHA256:4Jcm185Eiz+wAgzRR0Uw2yADR5ewvpu26XtxlEP+53I <comment>
    The key's randomart image is:
    +---[RSA 4096]----+
    |  o+*o*=o        |
    |   o.=o=.        |
    |  . ..oo...      |
    |   + . .== .     |
    |    + o.So+      |
    |     o.=.B. .    |
    |    . .o. =o     |
    |    .+..  ..E    |
    |   oB+     o     |
    +----[SHA256]-----+

Alternativamente, puede generarse la pareja en cualquier otro directorio, y moverlas después. Pero no es recomendable generar la pareja en un dispositivo y mover la privada a otro.
	
La contraseña (*passphrase*) introducida se utiliza para cifrar simétricamente la clave privada, de forma que no pueda utilizarse por terceros sólo con tener acceso al contenido del fichero. Esta contraseña puede cambiarse más tarde, ya que es recomendable renovarla periódicamente:

    $ ssh-keygen -f <nombredelapareja> -p

No es necesaria para, por ejemplo, comprobar la integridad del contenido recibido. Se solicitará cada vez que se quiera firmar un contenido.  Es personal y debe protegerse. Nunca se debe facilitar esta contraseña a otros usuarios. En cualquier caso, es sólo una capa de seguridad, por lo que sigue siendo importante gestionar con cuidado las copias de la clave privada.
	
    $ cat ~/.ssh/<nombredelapareja>
    -----BEGIN RSA PRIVATE KEY-----
    Proc-Type: 4,ENCRYPTED
    DEK-Info: AES-128-CBC,4489C37536197E54D83CC048A4C438A8
    
    ukL2odx5NHDxYt2ONMDvi0mMRVX8hTneEYXkhpLyEVgWBsV++jNWY69BX8StoCMV
    pj4Xo5dm4suAGFsxlsggNO/fDY4F9Cm/yUEI+8EM9ZggdM8xdEK/W+X3/XZaYmoM
    nQPKpimK+3CiUldq6iTh8X/rvaV01urS2mfKfIWKT9mAOSP7rfSmxNlFK1Tm9vX2
    l6nfNJ4MtQZeFiyxxohcZIXiYUp2SusPvXCvJBxpHCu8bCT0q+gLdqz8tOmZ04ty
    lvJLv1FP5YxDTU+cU8H9+zOPR0tv10T8R/umwvroCPARyLnmztN5IB/ToxkKh4B5
    MH8mGKNuMqON5nPALQzOS/L4Uko+J3F6wTNVYWCG6RmkXSAOgweZqyKSinxleUHy
    y3a3ibE3s2UvgKdl8bzUFrCG/CNPvEtlfJMZO8mWTfrq3cFj0Zz6UMghVKzD0B65
    M2TTO5t1MAEc4zMn1ubrg7lrsTM1Em4SMWrnJph0NOrRRdfDnd28ZVdrEe5ci6/e
    DdhKtC99JI42xQakFlJhKPNty40OWbWwgfShP78vYmoCQpWFaElH33Etonuxs2SK
    Gu1FvnO1+efvRAiAmbp8zKZPNyCBjQjUB/FjcufIsjCimlYDkAYDq3q9ic2M8/Cq
    Wty7n1HXfSlfDntsFRvT0k02d2WVlMzSwWP/0r85dLuOA3qjkDfG/5pEIZUuNm9O
    k3+OmExyFFZwfjNIeB4Sgi+gRvNtnLHr+bvEXyAUYcxA/YOOrSlV/ZctzlOudLNR
    4IEor44VymtH2VQeYizbbhlaDoXbOfaw/ka4WoN6wvM61ss05Agng7hSv98ksVC6
    LxEH4e4twpyVWX8IlW5TYEAerCqx2tRN2unkeHPim9shrFLAr1Jvjd96yJET1Uum
    zep5kNTMbahy8i9ftv7JZ4+Ni0jgduHKJq1oUIkRVeT/35RvU5JpNkxZDTXDGqO1
    DQX2U1Nrn6lwbn4Sqj2VJ7dPP1/BllYd+EE7j3+sF7E/zJAcXvCB8BM5xh96eeJt
    M9Tx5AAw6ZewIekOBIQjIxnEkUII6Dr7KC+EotwdNgP/mOK3htBIxY7t41CiNzR+
    03xUD8W2OhoKMV7lF4iVGY988QAyadstlEGtlECVU/OkaUPe9EEcj1CIrB4lo17w
    dLYJwZDmeWclyMq99ktdgSof1Ggh4lpnIS9+kVFOisQkzi+niKMWtLzqoqZrXinI
    4oKT5fDQlcFRz16sfUeZDDBeHCv1wacqYgocIqNAATqLZTmdadNCSpPacS1/6MUR
    1m5NYifm49GRzhg4WrgIAIJMhujxzx/KuL+DYsHhmr2wmKaaXM00mf7TOISXD8q2
    5HhiTPHTJ5acWFXKnAfZppR78bAkzp42hPgLCNkrBW5XNfX1OfzE+xlwsU+BG2SU
    gSeApCtxWnWCCjK6xh2x6n0SHuj2s2BM1uQ222CcaM7cK3X4iWGSYkb5fMBp6qE/
    Kb4C2uM733dVrivX3Bm6bHtjjN/jq4/6F7jsXnTfUWl4PShRTEfFXbqJvOMgQJjH
    ihIYaJR+IzQGBT1+6RKsiBol6zJbu+zv6J9FL5gKjm8uyhVfBWhOopPzJWczLlxW
    6DoVYkFc7Ux9k0BVfCSNj23l6onICL7AHETwQGwMX1o0Bo3eWtyXq7vgG3vj6L1x
    3CmL41SNSj1yjwJmgqBbssSVzuU53IEmt9FV94FQMcJ+tiNj6LNSiqM3vfTbg/PH
    B+OW/JdvrTZFuAYZ00/R5bkLocX3H7mcvVTkgGtKlW1pf+093gfyK7P3TALh9C24
    BxpSxzN6pafCazqnz7HD43q+eODWa2P9PV4SJjcMgw/SuVeIJQKH5MPvdx56eGBS
    DuV/6fXGAJtBlMSgGSdQSYWaunKi2lH9elXD/ot5RfRM+8QmnJqAvvT2d/pn1fl/
    GtdRFzv+MKsz1SRuExGMulS5YBrw6ntAIaFkQcEF7IX3DCG1AjhO0jiDQ/yfQk6J
    WgEHVvdJOcmR/BLyNFWdf+kvoWpZGceArnUdNjTlT7OfcgVrm1GGTWBMyti3zrau
    KtLWHKkGYPUxgmNOy+q7cMK0fdMrv/MrT98OPVA+yTFIZIM6XUE8oulFc5BoS0ea
    lzESP77RHyT5BPX3xUetwtywlWnIfiOUuvno/6ht1QhaFopeoAZNafHNDQIsBEkf
    HZKYh+dR3Tc9TYxfdRoaDGMotkr4djrW5PoYtDhHNyg//RJ6tC8hL2Bop5NTyp6B
    7hd/mT8TetA8a0SZgRF3bRfeOBgOLjXw6z0uRajtneFQixPhNskN0waFqKDqLgis
    SZWPssiPWbhnyJvSKS+2TGMYjP/dFnxFLWZ2JJjICe3z67uShWWYry+JJQNxe01M
    Bu1N23bIuRzZqEdKtYnr6gcGzfY1lah4flLW7PJnZPkKlbOev6y1x5JVaGG3P8sR
    e0Q4imYhV3Kv280H0KncQzARgz6YceaGXb9C/Wud+llRFN1a9+hiPExLEYd0NUWc
    ti004zFdYZ2rb20iLX7c4gXyM6tFKmed1rejnRQFa+N5QHNYCLM9+5/UACISQohu
    064pvdIPHFhnb8qRp3hlWwzqXTBR/Hk5zAQhm0aqWRyYXKSZvC0DXSrtxX8XQ95X
    qkJSxbJoi66qtOLtqbaF/qhWHibMrYGfs2V5jjSbhOjLtW8nH7u94EeXhL/W66Qf
    LucGlCn7DiEXUxBdySeiPBecN32uGmAwu/cF+Yg0XI6AUEZ68Ow3U3fmljxBDL2f
    yRfuXRVXu3TTRcRLSEDjK/aEO/t7xG/I9uhP8yfc4n6y8//wfzTefOubXnv9HuNL
    tnV5VbVIZ96h6TRe4N5f8xqUUBBOM3EIi4PFqQq/lsOTRTTy7C3SJM4V832WIl2k
    b1DMxMO9a/5nnfuva8oY1cRrCS2glSOucVx3nFOzSef0ylpVZ74GgcC92Sy+1FbR
    oP7l55/qp1bOmhExdS8pz6gyZCNfWqSX0YIuo4kuWkJUDCJA33YwyTiWduD9tXB2
    dZO6H+i8r7+L9jOdGD2b3XCrg/onfYdRsrknjAoJRsUsJo09P9laEuXPPROW6BIQ
    6n2JGE8S5U4VPBWnBw1GnBFXXyaASIfX5NiqlJDmbBdbq1p+rckglN4MWWZcAGvc
    -----END RSA PRIVATE KEY-----

##### ssh-copy-id	

Para que un host permita el acceso mediante SSH a un usuario, la clave pública de éste debe estar en el fichero `~/.ssh/authotized_keys`. Puesto que se trata de una clave pública, puede transferirse al servidor por el medio deseado.

    $ cat ~/.ssh/<nombredelapareja>.pub
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCy9bZvN2IfzBU0brJHlXqAPE85+mZPtGULHjiFDilNZ3ZwdkMvfdPKabNzVaxabBaS60HXB2EhKHfD6sF/bX88U9SeWxpNOhbolDLBW/gkVL68EvOHghsYZRwTXhJmT/j9piIOC6T7bnZD7nCC4Je6MRjOCyNf7pYqeZfRuJV0D0txKT5NaCH92SwiIqBrBYw8xWSfFdYcVneZKRT0StylXVl3wWL1+Zw/DnctJVaUEVqM800OguG5ujAl27LyhNj0HQOBVlXOGS4SXUYtXkA2a6lv/uDjI8fjd0DkSsdzVsLridzumxAo8uWr/C9B89T7HUMAOD7iNQfTkK5nrd6KF0gVYJl5OSoDAsHe/vhfg+DbbQf68MlZAnBioWY+mcQ4ffWHYL2kVy5N4XHNCnRfmCMiC8cLh/zNs7IVzE1CSMVyE2sMLCG3gfU7UqEX0CWoNyq5AKpeMZ6qKhIGXrLAogSVs45WQ+qkX/lAJp2yyofMtxjyV08SAE++CDgml8yF3xgO0zgh8IUe7t2ZGOeaJ4OoffL5RDCkAybVdRBdaCoo/EEn4qzptSIhWh4uyN/IvyVaGEQT+CPgD19mB6GMBdjsbH+KAGO+zIehVxfcMPj035vxuLWkQk/yUMeGRyqyBVsJWau2ZfIOCY+EyvOUTT0yKsnBvKovcLae5+Z1zQ== <comment>

Se puede añadir la clave nueva a `authorized_keys` mediante cualquier editor de texto, o directamente en la terminal:

    $ cat <nombredelapareja>.pub >~/.ssh/authorized_keys   # Borrar el contenido anterior
    $ cat <nombredelapareja>.pub >>~/.ssh/authorized_keys  # Mantener el contenido anterior y copiar al final

Para facilitar la tarea anterior, en caso de disponer de acceso por contraseña, puede utilizarse [ssh-copy-id](http://linux.die.net/man/1/ssh-copy-id):

    $ ssh-copy-id [-i [<nombredelapareja>.pub]] [<usuario>@]<nombreoipdelhost> [-p <puerto>]	

##### ssh-agent

Como resulta tedioso introducir continuamente la contraseña (*passphrase*) cuando se establecen conexiones continuamente, [ssh-agent](https://en.wikipedia.org/wiki/Ssh-agent) permite introducirla una sola vez. Crea un proceso que guarda la clave privada desencriptada en memoria, y se comunica con los clientes SSH utilizando un socket Unix.
   
    $ eval $(ssh-agent -s)
	$ ssh-add ~/.ssh/<nombredelapareja>
	
En caso de querer ejecutar `ssh-agent` y añadir la clave cada vez que se inicie la terminal, se pueden añadir las líneas anteriores al fichero `~/.bashrc`. Más información en [Could not open a connection to your authentication agent](http://stackoverflow.com/questions/17846529/could-not-open-a-connection-to-your-authentication-agent) y [ssh-agent-snippets.sh
](https://gist.github.com/alexras/1291631).
	
##### Configuración del cliente

Para iniciar una sesión en un host es recomendable disponer previamente de su clave pública y añadirla al fichero `~/.ssh/known_hosts`. Si no, la primera vez que se trate de realizar una conexión se mostrará un aviso y se pedirá confirmación para añadirla automáticamente.

    $ ssh [<usuario>@]<nombreoipdelhost> [-p <puerto>] [-i <nombredelapareja>.pub]

En caso de que se utilicen el puerto por defecto (`22`), el nombre y ubicación por defecto (`~/.ssh/id_rsa.pub`), y el usuario local sea igual que el del host, se puede resumir en:
	
    $ ssh <nombreoipdelhost>
	
En cualquier caso, resulta tedioso tener que recordar las opciones y parámetros para cada host. La edición del fichero de configuración local (`~/.ssh/config`) nos permite establecer alias para los host:
	
    Host <alias>
      HostName <nombreoipdelhost>
      Port <puerto>
      User <usuario>
      IdentityFile /<homedelusuario/.ssh/<nombredelapareja>.pub
  
 **P**: *¿Una pareja de claves por usuario? ¿por host? ¿por cliente? ¿por servicio?*
 
 **P**: *¿Smartcards? ¿Tokens?*

 **P**: *¿Man in the middle - MITM?*
 
#### Acceso a directorios

- [INFO: Secure FTP, FTP/SSL, SFTP, FTPS, FTP, SCP... What's the difference?](http://www.rebex.net/kb/secure-ftp/)
- [FTPS (FTP over SSL) vs. SFTP (SSH File Transfer Protocol): what to choose](https://www.eldos.com/security/articles/4672.php?page=all)

> - Compared to the [Secure Copy Protocol - SCP](https://en.wikipedia.org/wiki/Secure_copy) , which only allows file transfers, the [SSH File Transfer Protocol - SFTP](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol) allows for a range of operations on remote files which make it more like a remote file system protocol (resuming interrupted transfers, directory listings, remote file removal...). SFTP attempts to be more platform-independent than SCP; with SCP, for instance, the expansion of wildcards specified by the client is up to the server, whereas SFTP's design avoids this problem. While SCP is most frequently implemented on Unix platforms, SFTP servers are commonly available on most platforms.

> - SFTP is sometimes confused with `Simple File Transfer Protocol`, which was proposed as an (unsecured) file transfer protocol with a level of complexity intermediate between TFTP and FTP.

> - While SFTP clients may transfer files and directories, the related file system may not be mounted locally using SFTP alone. Using [SSH Filesystem SSHFS](
https://en.wikipedia.org/wiki/SSHFS), a remote file system may be treated in the same way as other volumes (such as CDs, DVDs, USB flash drives and shared disks), providing secure file transfer and a secure remote file system.

> - SFTP usually only requires the SSH port for both data and control, but `FTP over TLS/SSL - FTPS` uses a control channel and opens new connections for the data transfer. As it uses SSL, FTPS requires a certificate, that may need the additional configuration of a supported FTP server ([más info](http://www.howtogeek.com/194740/what-is-the-difference-between-ftps-and-sftp/)).

##### scp

    scp [-v] -r [-P 2200] <origen> <destino>

	$user@$host:$dest

    cygwin
	mingw
	
##### WinSCP

Aunque el nombre pueda dar lugar a equívoco, soporta SFTP.

    winscp

##### dokan-sshfs

 - https://github.com/dokan-dev/dokan-sshfs
 - http://igikorn.com/sshfs-windows-8/

##### FileZilla

 - https://filezilla-project.org/
 
#### Escritorio remoto

https://en.wikipedia.org/wiki/Virtual_Network_Computing

> By default, RFB is not a secure protocol. While passwords are not sent in plain-text (as in telnet), cracking could prove successful if both the encryption key and encoded password are sniffed from a network. For this reason it is recommended that a password of at least 8 characters be used. On the other hand, there is also an 8-character limit on some versions of VNC; if a password is sent exceeding 8 characters, the excess characters are removed and the truncated string is compared to the password.

> UltraVNC supports the use of an open-source encryption plugin which encrypts the entire VNC session including password authentication and data transfer. It also allows authentication to be performed based on NTLM and Active Directory user accounts. However, use of such encryption plugins make it incompatible with other VNC programs. RealVNC offers high-strength AES encryption as part of its commercial package, along with integration with Active Directory. Workspot released AES encryption patches for VNC. According to TightVNC,[12] TightVNC is not secure as picture data is transmitted without encryption. To circumvent this, it should be tunneled through a SSH connection (see below).

> VNC may be tunnelled over an SSH or VPN connection which would add an extra security layer with stronger encryption. SSH clients are available for most platforms; SSH tunnels can be created from UNIX clients, Microsoft Windows clients, Macintosh clients (including Mac OS X and System 7 and up) – and many others. There are also freeware applications that create instant VPN tunnels between computers.

> An additional security concern for the use of VNC is to check whether the version used requires authorization from the remote computer owner before someone takes control of her device. This will avoid the situation where the owner of the computer accessed realizes there is someone in control of her device without previous notice.
  
    VNC
    RDP
    ssh -X

#### Ejecución de aplicaciones
 
    putty
	screen
	nohup

### C

 - https://en.wikipedia.org/wiki/Comparison_of_SSH_servers
 - http://www.kpym.com/2/kpym/index.htm

SMB/CIFS https://en.wikipedia.org/wiki/Server_Message_Block

    sudo mkdir -p /run/media/1138-4EB/CLIFF
    sudo mount -t cifs //158.227.72.111/Unai_Martinez -o username=Unai /run/media/1138-4EB/CLIFF/

http://www.seas.upenn.edu/~bcpierce/unison/download/releases/stable/unison-manual.html#ssh-win

http://techtorials.me/cygwin/sshd-configuration/

http://www.osmanoglu.org/computing/31-tunnelingsambathroughssh

### D

http://fuse.sourceforge.net/sshfs.html

### *

 - [stackoverflow.com - How to SSH to a VirtualBox guest externally through a host?](http://stackoverflow.com/questions/5906441/how-to-ssh-to-a-virtualbox-guest-externally-through-a-host)

---