---
title: Base configuration
---

```
    ssh pi@192.168.1.3
    raspberry
```

- [The single most useful thing in bash](https://coderwall.com/p/oqtj8w/the-single-most-useful-thing-in-bash)
- [FTP is so 90's. Let's deploy via Git instead!](https://coderwall.com/p/xczkaq/ftp-is-so-90-s-let-s-deploy-via-git-instead)

[Win32 Disk Imager](http://sourceforge.net/projects/win32diskimager/)

- [elinux.org](http://elinux.org/Main_Page)
  - [RPi Resize Flash Partitions](http://elinux.org/RPi_Resize_Flash_Partitions)
  - [RPi raspi-config](http://elinux.org/RPi_raspi-config)
- [Automatically connect a Raspberry Pi to a Wifi network](http://weworkweplay.com/play/automatically-connect-a-raspberry-pi-to-a-wifi-network/)

# Drivers

## WN725N

[github.com/lwfinger/rtl8188eu](https://github.com/lwfinger/rtl8188eu)

Hay que reconectar el dispositivo y reiniciar el equipo para que lo reconozca.

## Azio/Selene

Algunos teclados, como el [Quasar Selene](http://www.coolbox.es/products/selene-teclado-gaming-retroiluminado/) o los [Azio](http://www.aziocorp.com/webe/html/products/index.aspx?kind=12), no funcionan correctamente con el driver por defecto en la mayoría de distribuciones de GNU/Linux. En concreto, la teclas `Ctrl Izq`, `Win`, `Alt` y `Alt Gr` se comportan como `Shift Izq`. El driver interpreta la pulsación de cualquiera de ellas con el mismo código, por lo que no hay posibilidad de solucionarlo mediante las opciones de configuración del teclado.

Por suerte, [Colin Svingen](https://bitbucket.org/Swoogan/) ha escrito un [driver](https://bitbucket.org/Swoogan/aziokbd) que lo soluciona. Utiliza [mercurial](https://www.mercurial-scm.org/) como sistema de control de versiones, por lo que deberemos instalarlo para clonar el repositorio. Alternativamente, podemos [descargarlo](https://bitbucket.org/Swoogan/aziokbd/downloads) en formato zip.

Para instalarlo, basta con instalar las librerías para trabajar con el kernel (por ejemplo, `build-essential` y `linux-headers-generiz` en Debian, o `kernel-devel` y `kernel-headers` en Fedora), y ejecutar el script `install.sh` con permisos de administrador (`sudo`). Revisaremos la salida en pantalla para comprobar que no haya ningún error. En el caso de las últimas versiones de Fedora, por ejemplo, el último paso requiere añadir un argumento al arranque de Grub, para evitar que se cargue el driver por defecto. El script trata de crear un fichero en `/etc/default/grub.d/`, pero la configuración por defecto sólo utiliza `/etc/default/grub`. Por lo tanto, tal como se indica en el `README.md`, hay que añadir la siguiente línea, editando el fichero con permisos de administrador: `GRUB_CMDLINE_LINUX_DEFAULT='usbhid.quirks=0x0c45:0x7603:0x4'`.
