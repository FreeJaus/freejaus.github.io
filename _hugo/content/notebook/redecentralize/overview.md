---
menu:
  notebook:
    name: 'Redecentralize'
    identifier: 'nb-redecentralize'
    pre: "exchange"
    weight: -170

title: Redecentralize
---

# [[FreeJaus](https://github.com/FreeJaus)] Formación

---

 - **Título de la actividad**: Soluciones libres para entornos de trabajo/colaboración distribuidos multiplataforma
 - **Tipo**: Seminario
 - **GEAs**: [WebMod](https://github.com/FreeJaus/gea-webmod) | [PRISM](https://github.com/FreeJaus/gea-PRISM) | [Elide](https://github.com/FreeJaus/elide)
 - **Dinamización**: u.mc
 
---

 - **Lugar**: Seminario 7i27 (Asociación juvenil FreeJaus Ikasle elkartea)
 - **Hora**: 12:00-13:30
 - **Formato**: Exposición (20') | Taller (70')
 - **Sesiones**:
   - 2015Nov19: Contexto, sistemas de ficheros, protocolos y aplicaciones
   - 2015Nov26: Control de versiones y automatización de la sincronización

---

 - **Objetivos**:
   - Generales:
     - Analizar las ventajas/dificultades y las oportunidades/amenazas de la distribución de información en formato digital.
     - Analizar los modelos de seguridad del software basados en oscuridad y los basados en la publicidad de las fuentes.
     - Reflexionar sobre la dependencia tecnológica y la ((re)de)centralización de internet.
   - Primera sesión:
     - Conocer las soluciones más extendidas para el acceso y gestión remota de máquinas con sistemas Windows y/o GNU/Linux.
	 - Identificar los casos de uso particulares (como colectivo y/o a nivel individual) que pueden beneficiarse de soluciones seguras de acceso remoto.
	 - Planificar y probar la aplicación de soluciones adecuadas a cada caso de uso.
   - Segunda sesión:
     - Conocer los sistemas de control de versiones más extendidos y las diferencias entre centralizados/distribuidos.
	 - Configurar y conocer el uso básico de Git (tanto en terminal como mediante GUIs).
	 - Configurar y conocer el uso básico de Syncthing.

---	 

*No es necesario, pero se recomienda asistir con un dispositivo portátil (preferiblemente con una distribución GNU/Linux o alguna versión de Windows). Por un lado, para tomar notas y guardar las referencias con facilidad. Por otro, para probar algunas de las soluciones en el taller. Dentro de las limitaciones del centro, se tratará de disponer de tomas eléctricas suficientes.*

*Se requerirá la instalación del menor número de aplicaciones -que serán, preferiblemente, portables-. Sin embargo, es posible que las asistentes quieran realizar una copia de seguridad de la(s) particion(es) a utilizar (por ejemplo, con [Clonezilla](http://clonezilla.org/)), para dejar el sistema intacto después de las sesiones.*

---

 - Contexto
   - Seguridad de la información
   - ¿De dónde venimos? ¿A dónde vamos? ¿Quiénes somos?
   - Autogestión
   - Funciones hash
   - Criptografía asimétrica
   - Confianza
   - Internet protocol suite
 - Permisos de usuario
   - Windows
   - GNU/Linux
 - Acceso local
   - Windows
   - GNU/Linux
 - Acceso remoto
   - A: Win-Win
     - Acceso a directorios
	 - Escritorio remoto
	 - Ejecución de aplicaciones
   - B: Win-Lin
     - Secure Shell - SSH
	 - Acceso a directorios
	 - Escritorio remoto
	 - Ejecución de aplicaciones
   - C: Lin-Win
   - D: Lin-Lin
 - Detección y selección remota del sistema
 - Sincronización de ficheros y copias de seguridad
   - Owncloud
   - Syncthing
   - rsync & rsnapshot
   - Unison
 - Control de versiones
 - Distribución de entornos
 - Monitorización
 - Elevando la vista
 - Editores de texto
   
---

### Elevando la vista

- ¿Cómo puedo subir mis apuntes en PDF a GAUR y que no los copien? Disponer de los TFG en formato PDF para su consulta online
 
- http://marc.info/?l=openbsd-tech&m=144472550016118&w=2
 
- Syncthing
  - statistics¿?
  - compact visualization¿?
  - backup (hand-triggered)
  - master/slave modes
	 
- http://libreorganizacion.org/
- http://remarkjs.com/

#### Acceso físico al equipo:

- Arranque dual
- Tarjetas/tags de acceso:
  - Mifare
     - [24C3: Mifare (Little Security, Despite Obscurity)](https://www.youtube.com/watch?v=QJyxUvMGLr0)
     - [github.com/nfc-tools](https://github.com/nfc-tools/)
     - [Live RFID Hacking System](http://www.openpcd.org/Live_RFID_Hacking_System)
     - [How to Crack Mifare Classic Cards](https://firefart.at/post/how-to-crack-mifare-classic-cards/)
  - Barik
  - [Salto](http://www.saltosystems.com/en/product-range/explanation/31/salto-wireless/)
  - [Building a safe NFC ticketing system [30c3] ](https://www.youtube.com/watch?v=Czvn4L1r6f4)
  - [27c3: Reverse Engineering a real-world RFID payment system](https://www.youtube.com/watch?v=FqO1PvRAy90)
  - [DEF CON 23 (2015) - RFIDiggity - Pentester Guide to Hacking HF/NFC and UHF RFID - 09Aug2015](https://www.youtube.com/watch?v=7o38hyQWw6g)
  - [DEFCON 16: The Anatomy of a Subway Hack: Breaking Crypto RFID's and Magstripes of Ticketing Systems](https://www.youtube.com/watch?v=amTB19V_sqg)
  - []

```
sudo dnf install autoconf libtool libusb-devel libpcsclite-devel
sudo dnf install libnfc

git clone https://github.com/nfc-tools/mfoc.git
cd mfoc/
autoreconf -vis
./configure
make
make install
```

```
nfc-list #o nfc-poll
mfoc -O output.mfd
hexdump -vC output.mfd
```

[fuzxxl/nfc](https://github.com/fuzxxl/nfc)

---

- [RFID Treehouse of Horror [30c3]](https://www.youtube.com/watch?v=gTj5Ni7_zes)
- [Analyzing RFID Security [25C3] ](https://www.youtube.com/watch?v=aO6zFpgtLj8)
- [Preserving arcade games [31c3]](https://www.youtube.com/watch?v=2q_qXGIj-jg)
- [25c3: Chip Reverse Engineering](https://www.youtube.com/watch?v=Pp4TPQVbxCQ)
- [Security of the IC Backside [30c3]](https://www.youtube.com/watch?v=wmv7tu7FSW0)
- [Extracting keys from FPGAs, OTP Tokens and Door Locks [30c3](https://www.youtube.com/watch?v=H-cpm7D8Sqg)
- [Drones [30c3]](https://www.youtube.com/watch?v=IePG2fzKvF0)
