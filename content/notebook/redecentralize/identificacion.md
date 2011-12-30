---
categories: [ nb-redecentralize ]

title: "4. Identificación"
keywords: 

publishdate: 2016-01-01
date: 2016-01-01
---

Cuando no se conoce el estado de un host, puede identificarse si la máquina está encendida mediante 'ping <direccion>' y conocer el sistema arrancado con la aplicación [nmap](https://nmap.org/) (es posible que se requieran permisos de administración, `sudo` en el cliente).:

    nmap -O <nombreoipdelhost>'

La GUI oficial [Zenmap](https://nmap.org/zenmap/), permite hacerlo de forma gráfica, tanto desde GNU/Linux como desde Windows.

En caso de disponer de más de un sistema operativo, si se utiliza [GRUB](https://www.gnu.org/software/grub/) como gestor de arranque, se puede utilizar el `grub-reboot` (en algunas distribuciones `grub2-reboot`) para reiniciar a uno en concreto. Para ello, GRUB debe estar configurado para arrancar una distribución por defecto que contenga `grub-reboot`, además de verificar algunas variables tal como se indica en [wiki.debian.org/GrubReboot](https://wiki.debian.org/GrubReboot).

 **P**: *¿Paticiones GPT?*

 **P**: *¿Windows 10?*