# Vulneración de seguridad en el control de acceso por tarjeta en la UPV/EHU

## Introducción

En los edificios construidos en la UPV/EHU en el último lustro, se utilizan las tarjetas universitarias (provistas con tecnología NFC/RFID) para el control de acceso. Éstas se reconocen como de tipo "Mifare Classic 1K" por lectores genéricos de bajo coste. La serie "Classic" de Mifare, comercializada por NFC, basa el cifrado del contenido de las tarjetas en un algoritmo propio. Utilizan, por tanto, medidas de seguridad basadas en oscurdidad u ocultación. Concretamente, la empresa fabricante, NXP, no ha hecho públicos los detalles criptográficos del algoritmo. Sobre este tipo de práctica, la [Wikipedia](https://es.wikipedia.org/wiki/Seguridad_por_oscuridad) dice:

> Un sistema que se apoya en la seguridad por ocultación puede tener vulnerabilidades teóricas o prácticas, pero sus propietarios o diseñadores creen que sus puntos débiles, debido al secreto que se mantiene sobre los entresijos del sistema, son muy difíciles de encontrar, y por tanto los atacantes tienen muy pocas probabilidades de descubrirlos.

De hecho, en 2008 unos investigadores holandeses analizaron físicamente el chip, capa por capa, y en unos meses se hizo público el contenido oculto. Probaron así, una vez más, que la seguridad por ocultación sólo puede considerarse como tal temporalmente. Por pocas que sean las posibilidades de descubrir vulnerabilidades, si las hay, el sistema no es seguro. Se trata de un caso que tuvo un eco mediático relevante, porque el transporte público utilizaba ese tipo de tarjetas. Hubo sesiones específicas en ambas cámaras, se encargaron informes al respecto, e incluso la empresa denunció a los investigadores para evitar la publicación de la información. Pueden consultarse los detalles al respecto, tanto técnicos como geopolíticos, en los siguientes enlaces:

- Artículos
  - [A Practical Attack on the MIFARE Classic](http://www.cs.ru.nl/~flaviog/publications/Attack.MIFARE.pdf)
  - [Dismantling MIFARE Classic](http://www.cs.ru.nl/~flaviog/publications/Dismantling.Mifare.pdf)
  - [Wirelessly Pickpocketing a Mifare Classic Card](http://www.cs.ru.nl/~flaviog/publications/Pickpocketing.Mifare.pdf)
- Ponencias
  - [DEFCON 16: The Anatomy of a Subway Hack: Breaking Crypto RFID's and Magstripes of Ticketing Systems](https://www.youtube.com/watch?v=amTB19V_sqg)
  - [23C3: RFID hacking](https://www.youtube.com/watch?v=w0vC8gfBkRg)
  - [23C3: A Hacker's Toolkit for RFID Emulation and Jamming](https://www.youtube.com/watch?v=kwsCixJOe2I)
  - [24C3: Mifare (Little Security, Despite Obscurity)](https://www.youtube.com/watch?v=QJyxUvMGLr0)

Seis años después, existen librerías software que permiten leer el contenido de cualquier "Mifare Classic" en apenas un minuto, utilizando un portátil convencional. En caso de conocer alguna de las claves de antemano, el tiempo se reduce considerablemente. Si, además, se utilizan dispositivos con mayor capacidad de cómputo, como FPGAs, se reduce a segundos (se conozca o no alguna clave). [Proxmark](http://www.proxmark.org/) es, por ejemplo, un modelo diseñado por un estudiante de máster. Para ilustrar el riesgo asociado, el siguiente vídeo muestra cómo se pueden "robar" credenciales "sin contacto":

{{< youtube NW3RGbQTLhE >}}

Hoy en día, el propio fabricante, [NXP](https://www.mifare.net/en/products/chip-card-ics/mifare-classic/), no recomienda el uso de los modelos Mifare Classic para aplicaciones de seguridad:

>MIFARE Classic is the pioneer in contactless smart ticket ICs operating in the 13.56 MHZ frequency range with read/write capability and ISO 14443 compliance.
>It started the contactless revolution by paving the way for numerous applications in public transport, access management, employee cards and on campuses.
>Following the broad acceptance of contactless ticketing technology and extraordinary success of the MIFARE Classic product family, application requirements and security needs constantly increased. Therefore we do not recommend to use MIFARE Classic in security relevant applications anymore.
>This led to the development of two high security product families MIFARE Plus and MIFARE DESFire and to the development of the limited use/high volume IC family MIFARE Ultralight.

---

Tratándose de un modelo de tarjeta ya inseguro cuando se empezó a utilizar en la UPV/EHU, se han realizado un conjunto de pruebas para identificar cuál ha sido la implantación y cuáles han sido las medidas tomadas para securizar el sistema. Como información de partida, además de los recursos disponibles en la red, se sabe que:

- Las tarjetas no se emiten ni se dan de alta en el centro. En el caso del PDI, es el Vicerrectorado de Personal quien las gestiona. En el caso del PAS (limpieza, seguridad, etc.) disponen de tarjetas de visitante con el nombre escrito a bolígrafo. En el caso del alumnado, ¿es una Dirección del Vicerrectorado de Campus?
- El administrador del centro asigna los permisos a las tarjetas mediante una aplicación en Windows y un lector/grabador que tiene sobre la mesa (aparentemente conectado por USB). Si una tarjeta está "caducada", el administrador no puede escribir en la misma. Si está activada, la habilitación del acceso a puertas concretas se realiza siguiendo procedimientos arbitrarios.
- Una vez activada y habilitada la tarjeta, se puede utilizar para acceder y configurar la cerradura de las puertas listadas en la aplicación en el momento de grabarla.
- Por medio del personal de la empresa se sabe que las cerraduras de aulas, despachos, laboratorios, etc. no tienen ningún tipo de comunicación (cableada ni inalámbrica). Son autónomas y tienen batería/pila.
- En las puertas exteriores (garaje, entradas principales y traseras, etc.) los lectores son diferentes.
- El personal del centro hace referencias a la posibilidad de identificar quién ha accedido al centro fuera de los horarios establecidos, por lo que se intuye que los lectores externos sí pueden estar conectados a la red. Estarían, por lo tanto, conectados a la base de datos que gestiona el administrador desde su equipo.
- Se indica a los usuarios que, cuando se "descargue" la tarjeta, deben pasarla por un lector en concreto para recargarla. A este lector se le denomina `cargador` en el resto del informe.
- Se han dado casos de límite de memoria o conflicto de zonas, al disponer en una misma tarjeta de múltiples permisos para diferentes puertas de diferentes centros.
- Se han dado casos de cerraduras que han "descargado" tarjetas por "mal funcionamiento" o "falta de batería":
  - Una tarjeta con permisos para `n` puertas abre todas menos una.
  - Si se intenta abrir la última, la tarjeta se descarga y no funciona en ninguna.
  - Tras recargarla en el cargador, vuelve a abrir todas menos la defectuosa.
- El fabricante de las cerraduras, el software de la red y base de datos es [Salto](http://www.euskadi.eus/gobierno-vasco/contenidos/anuncio_contratacion/expjaso3208/es_doc/es_arch_expjaso3208.html)-[Systems](http://www.i-sai.net/es/proyectos/sistemas-de-seguridad-en-centros-educativos/upv-ehu-biblioteca). El sistema en sí es compatible con otras tarjetas más seguras, como las DESfire (si se gestionan adecuadamente).

## Prueba de concepto 1

### Objetivos

- Verificar que se puede interactuar con dispositivos NFC con un lector de bajo coste.
- Verificar que el tipo de tarjeta utilizado en la UPV/EHU (para PDI, PAS y Alumnado) funciona a 13.56MHz.
- Verificar que el tipo de tarjeta utilizado en la UPV/EHU es "Mifare Classic 1K".

### Herramientas

- Hardware
  - Lector/grabador NFC/RFID basado en [PN532](http://www.nxp.com/documents/user_manual/141520.pdf) de [NXP](http://www.nxp.com/) [a partir de 8€ en aliexpress -envio gratios]
  - Arduino Nano 328P [a partir de 1,5€ en aliexpress -envío gratis-]
  - Portátil o Single-Board-Computer
  - Tarjeta de la UPV/EHU (con permisos activos o caducados)
- Software
  - [Arduino IDE](https://www.arduino.cc/en/Main/Software) (software libre gratuito)
  - Librería [Adafruit-PN532](https://github.com/adafruit/Adafruit-PN532) (software libre gratuito)

### Metodología

- Conectar el lector/grabador al Arduino [por SPI](https://learn.adafruit.com/adafruit-pn532-rfid-nfc/breakout-wiring).
- Conectar el Arduino al ordenador por USB.
- Abrir el ejemplo `readMifare` y programar el Arduino.
- Abrir el monitor serie y seleccionar la velocidad de transmisión indicada en el sketch.
- Acercar una tarjeta de la UPV/EHU y comprobar la lectura.

### Conclusiones

- El diseño libre de la placa basada en PN532, que funciona con dispositivos a 13.56MHz, es suficiente para interactuar con tarjetas de la UPV/EHU, que son reconocidas como "Mifare Classic 1K".
- Un microcontrolador de 8bits es suficiente para gestionar el lector/grabador. Lo que cobra sentido al analizar la datasheet, ya que el PN532 incluye un microcontrolador basado en el 8051.

## Prueba de concepto 2

### Objetivos

- Verificar que se puede leer el contenido íntegro de una tarjeta de la UPV/EHU.
- Verificar que se puede volcar el contenido leído en otra tarjeta, obteniendo una copia idéntica, a excepción del UID de la tarjeta.

### Herramientas

- Hardware
  - Lector/grabador NFC/RFID basado en PN532
  - Conversor USB-TTL basado en [PL2303](http://www.prolific.com.tw/US/ShowProduct.aspx?p_id=225&pcid=41) [a partir 0,5€ en aliexpress -envío gratis-]
  - Portátil o Single-Board-Computer
  - Tarjeta de la UPV/EHU (con permisos activos o caducados)
  - Tarjeta vacía [a partir 0,3€ en aliexpress -envío gratis-]
- Software
  - [nfc-tools](http://nfc-tools.org)
     - [libnfc](https://github.com/nfc-tools/libnfc)
     - [mfoc](https://github.com/nfc-tools/mfoc)
  - [hexdump](https://www.freebsd.org/cgi/man.cgi?query=hexdump&sektion=1)
  - [meld](http://meldmerge.org/)

### Metodología

- Conectar el conversor USB-TTL al lector/grabador por UART.
- Conectar el conversor USB-TTL al ordenador por USB.
- Ejecutar `nfc-list` para comprobar que se detecta correctamente el lector/grabador.
- Acercar una tarjeta de la UPV/EHU y volver a ejecutar `nfc-list` para comprobar que se detecta la tarjeta.
- Ejecutar `mfoc -O base.mfd` para atacar la tarjeta y extraer el contenido íntegro (16 secciones, con 4 bloques de 128 bits o 16 bytes cada uno).
- Alejar la tarjeta de la UPV/EHU, acercar una tarjeta vacía y ejecutar `nfc-mfclassic w a base.mfd` para escribir el contenido leído.
- Ejecutar `mfoc -O copia.mfd` para comprobar que el contenido se ha escrito adecuadamente. Opcionalmente, se pueden indicar las claves conocidas para acelerar el proceso.
- Convertir el contenido a formato texto con `hexdump -vC base.mfd > base.dump` y `hexdump -vC copia.mfd > copia.dump`, y compararlos con `meld base.dump copia.dump`.
 
### Conclusiones

- Se puede leer el contenido íntegro de una tarjeta de la UPV/EHU.
- Se puede escribir el contenido leído de la tarjea de la UPV/EHU en otra tarjeta, obteniendo una copia idéntica, a excepción del UID de la tarjeta.

## Prueba de concepto 3

### Objetivos

- Comprobar si, a pesar de tener diferentes UID, las cerraduras aceptan una copia realizada inmediatamente después de recargar una tarjeta de la UPV/EHU.

### Herramientas

Las mismas que en la PoC 2.

### Metodología

- Acercar la tarjeta al cargador.
- Realizar una copia siguiendo la metodología de la PoC 2.
- Acceder a cualquiera de las puertas.

### Conclusiones

- Las puertas abren sin diferencias con respecto a la tarjeta original, por lo que se concluye que las cerraduras no comprueban el UID de la tarjeta. ¡Sorpresa! El ataque más burdo ha funcionado a la primera.
- VECTOR 1: mediante "wireless pickpocketing", se pueden robar las credenciales más sensibles (las del PAS), que dan acceso a todo el edificio.
  - a) Con un lector portatil escondido en la manga.
  - b) Con un lector de mayor rango (requiere análisis CCTV)
     - b.i) Máquina de café
     - b.ii) Pared del cargador
     - b.iii) MITM Máquina de fichar

## Prueba de concepto 4

### Objetivos

- Identificar si la cerradura tiene algún efecto sobre una copia, a pesar de autorizar el acceso.
- Identificar qué efecto tiene el cargador sobre una tarjeta copiada, pero con UID diferente.

### Metodología

- Leer el contenido de la copia realizada en la PoC 4, después de acceder a la puerta.
- Acercar la copia al cargador, después de haber accedido a la puerta.
- Leer el contenido de la copia, después de haberla recargado.
- Comparar los resultados con `hexdump` y `meld`.

### Conclusiones

- Las dos lecturas realizadas son exactamente iguales que la realizada inmediatamente después de realizar la copia. Por lo tanto, ni la cerradura ni el cargador han tenido ningún efecto en el contenido.
- Puesto que las tarjetas "descargadas" por cerraduras defetuosas recuperaban el funcionamiento después de pasarlas por el cargador, es improbable que no tenga ninguna conexión con la base de datos. Hay varias interpretaciones posibles:
  - a) El cargador utiliza un campo diferente del UID para comprobar la tarjeta, por lo que, como la cerradura, no es capaz de diferenciar la copia y la recarga correctamente.
  - b) El cargador identifica que el UID no es correcto y no realiza ninguna modificación en la tarjeta.
     - b.i) Registra en el sistema una alarma (se registran todos los intentos de carga).
     - b.ii) Se considera un error de lectura y no se registra el evento en el sistema (sólo se registran los intentos de carga positivos).
- No es seguro realizar pruebas reiteradas (sin espaciarlas), hasta conocer mejor el funcionamiento del cargador y de la red.

## Prueba de concepto 5

### Objetivos

- Observar las diferencias en el contenido de diferentes tarjetas de la UPV/EHU, con perfiles variados.
- Observar las diferencias en el contenido de diferentes tarjetas, caducadas y sin caducar, con permisos iguales y diferentes.

### Herramientas

Las mismas que en la PoC 2, pero utilizando varias tarjetas de la UPV/EHU.

### Metodología

- Para cada tarjeta, realizar una lectura con `mfoc`, tal como se ha procedido en la PoC 2.
- Convertir todos los volcados a ASCII con `hexdump`.
- Comparar el contenido con Meld, Calc, scripts...

### Conclusiones

- La sección 0 tiene las keys por defecto, y sólo tiene contenido en 1 de los 3 bloques de datos. Es decir, el UID de la tarjeta.
  - 22 de los 32 bytes del bloque coinciden en tres de cuatro tarjetas (tanto de PDI como de alumnado, caducadas y sin caducar).
- La sección 1 tiene las mismas keys que las secciones 8-f, y sólo tiene contenido en 1 de los 3 bloques de datos.
  - De los 32 bytes, sólo 16 tienen contenido.
  - De esos 16, 4 bytes son comunes a todas las tarjetas.
- Las secciones 2-7 son iguales que en una tarjeta vacía, incluídas las keys.
- Las secciones 8-f tienen las mismas keys, y son diferentes de las de una tarjeta vacía.
  - 8: sólo se modifican dos bytes, que son "00" en el caso de tarjetas de PDI y "ff" en el caso del alumnado.
  - 9: parece contener los códigos de las puertas, ya que se observan similitudes entre tarjetas con permisos en las mismas.
  - a-c: están vacías.
  - d: el contenido es aparentemente muy diferente, y con una cantidad diferente entre tarjetas.
  - e: en el primer bloque se observan 26 de 32 bytes iguales en todas las tarjetas de alumnado. Las de PDI comparten 20 de esos 26.
  - f: todo el contenido es igual, excepto 22 bytes del bloque 3. 16 de los 32 bytes del bloque 2 están a cero.
- VECTOR 2: es posiblemente más complejo que el caso indicado en [How to Crack Mifare Classic Cards](https://firefart.at/post/how-to-crack-mifare-classic-cards/), pero se pueden observar patrones, por lo que potencialmente se puede atacar disponiendo de suficientes combinaciones:
  - a) Obtener más tarjetas con acceso a las mismas puertas.
  - b) Obtener más tarjetas con diferentes fechas de emisión y caducidad.
  - c) Obtener tarjetas con acceso a otros centros.
  - d) Cruzar los datos con códigos de centro, de campus, listados electorales (en el año 2016 hay elecciones y suelen estar disponibles públicamente)

## Dudas por resolver

- ¿Puede que "descargar" la tarjeta sea que caduque un token?
- Algunas de las claves guardadas son las que vienen por defecto. ¿Esto condiciona el éxito del ataque?
- Con Android no parece posible emular una tarjeta cualquiera por limitaciones de software al establecer el UID. Pero el hardware es posible que lo soporte.
- ¿Puede ser seguro el sistema aunque el contenido de las tarjetas sea legible y copiable?
  - Comprobar la UID de la tarjeta es inútil, ya que hay disponibles tarjetas con UID programable.
  - Two-factor. DNI 3.0, PIN...

## Tareas

- Escribir el contenido de una tarjeta no caducada en una que sí lo esté. Objetivo: ¿se pueden reutilizar lar tarjetas caducadas aunque la aplicación aparentemente no se lo permita al administrador?
- Adquirir tarjeta con UID programable para poder interactuar con el cargador sin riesgo de hacer saltar logs. 
- Parece posible emular una tarjeta con el propio grabador, aunque puede haber problemas de timing en la comunicación.
- [Salto](http://www.saltosystems.com/) tiene bastante información promocional sobre su sistema en la página web. Se exponen las cerraduras autónomas, y el lector que se ha denominado "cargador" en este informe. Es particularmente relevante que se utilizan las tarjetas de los usuarios para transferir información entre las cerraduras y el cargador (conectado a la red). Sistema que denominan data-on-card. Se especifica que se transmite el estado de la batería de las cerraduras. Parece entenderse que también se actualizan así los permisos de las tarjetas. Posibilidades de ataque:
  - Modificación de una tarjeta para que altere los permisos de una cerradura, independientemente de lo que esté registrado en la base de datos. ¿Base de datos paralela?
  - Denegación de servicio informando al cargador de que todas las cerraduras están sin batería

## Otras Referencias

- [Live RFID Hacking System](http://www.openpcd.org/Live_RFID_Hacking_System)
- [RFID Cooking with Mifare Classic](http://www.backtrack-linux.org/wiki/index.php/RFID_Cooking_with_Mifare_Classic)
- [Analyzing RFID Security [25C3] ](https://www.youtube.com/watch?v=aO6zFpgtLj8)
- [27c3: Reverse Engineering a real-world RFID payment system](https://www.youtube.com/watch?v=FqO1PvRAy90)
- [RFID Treehouse of Horror [30c3]](https://www.youtube.com/watch?v=gTj5Ni7_zes)
- [Building a safe NFC ticketing system [30c3] ](https://www.youtube.com/watch?v=Czvn4L1r6f4)
- [DEFCON 17: RFID MythBusting ](https://www.youtube.com/watch?v=Y_r3-G1WyCg)
- [DEFCON 20: NFC Hacking The Easy Way](https://www.youtube.com/watch?v=x2rF3dD1Ns0)
- [DEFCON 23: RFIDiggity - Pentester Guide to Hacking HF/NFC and UHF RFID](https://www.youtube.com/watch?v=7o38hyQWw6g)

---

Mientras la gente sólo viaje gratis, no hay problema. Mientras los medios no se hagan eco, no hay problema. Mientra no haya alarma, no hay problema. Mientras sepamos quien lo hace, no hay problema. ¿Cuándo hay problema, entonces?
