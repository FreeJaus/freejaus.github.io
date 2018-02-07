---
pre: "shield"
linktitle: "NFC/RFID"
title: "Seguridad en el control de acceso por tarjeta"
keywords: nfc rfid mifare classic libnfc mfoc
---

# Introducción

En los edificios públicos construidos o adaptados en el último lustro, se utilizan tarjetas (provistas con tecnología NFC/RFID) para el control de acceso. También es habitual en hoteles y transportes colectivos. Recientemente se están incluyendo también en tarjetas de crédito y teléfonos móviles. Tal es la expansión, que se pueden encontrar incluso máquinas *vending* y/o taquillas que utilizan esta tecnología (si no aquí, en países de nuestro entorno). Como resultado, actualmente existe en el mercado una amplia variedad de tarjetas y tags con diferentes características en cuanto a forma, capacidad, seguridad y compatibilidad de los protocolos que implementan,... y coste.

Uno de los primeros modelos en aparecer, "Classic" de la familia Mifare, comercializada por [NXP](http://www.nxp.com/), basa el cifrado del contenido de las tarjetas en un algoritmo propio. Utilizan, por tanto, medidas de seguridad basadas en oscurdidad u ocultación. Concretamente, la empresa fabricante, NXP, no ha hecho públicos los detalles criptográficos del algoritmo. Sobre este tipo de práctica, la [Wikipedia](https://es.wikipedia.org/wiki/Seguridad_por_oscuridad) dice:

> Un sistema que se apoya en la seguridad por ocultación puede tener vulnerabilidades teóricas o prácticas, pero sus propietarios o diseñadores creen que sus puntos débiles, debido al secreto que se mantiene sobre los entresijos del sistema, son muy difíciles de encontrar, y por tanto los atacantes tienen muy pocas probabilidades de descubrirlos.

En otras palabras, el elemento principal que garantiza la seguridad de las "Mifare Classic" es el hecho de que el algoritmo se encuentra en un chip, por lo que se necesitan herramientas específicas y de alto coste para analizarlo. Además se requieren conocimientos muy avanzados de electrónica, física de semiconductores, arquitectura de computadores para entender el funcionamiento. Sin embargo, aunque es muy difícil realizar un ataque exitoso, el sistema es inseguro para aplicaciones críticas.

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

Seis años después, el algoritmo utilizado es público, se conocen los detalles de su implementación, y también los errores en su uso que permiten evitar la seguridad. Existen librerías software que permiten leer el contenido de cualquier "Mifare Classic" en apenas un minuto. En caso de conocer alguna de las claves de antemano, el tiempo se reduce considerablemente. Si, además, se utilizan dispositivos con mayor capacidad de cómputo, como FPGAs, se reduce a segundos (se conozca o no alguna clave). [Proxmark](http://www.proxmark.org/) es, por ejemplo, un modelo diseñado por un estudiante de máster. Para ilustrar el riesgo asociado, el siguiente vídeo muestra cómo se pueden "robar" credenciales "sin contacto":

{{< youtube NW3RGbQTLhE >}}

---

Hoy en día, el propio fabricante [no recomienda](https://www.mifare.net/en/products/chip-card-ics/mifare-classic/) el uso de los modelos Mifare Classic para aplicaciones de seguridad:

>MIFARE Classic is the pioneer in contactless smart ticket ICs operating in the 13.56 MHZ frequency range with read/write capability and ISO 14443 compliance.
>It started the contactless revolution by paving the way for numerous applications in public transport, access management, employee cards and on campuses.
>Following the broad acceptance of contactless ticketing technology and extraordinary success of the MIFARE Classic product family, application requirements and security needs constantly increased. Therefore we do not recommend to use MIFARE Classic in security relevant applications anymore.
>This led to the development of two high security product families MIFARE Plus and MIFARE DESFire and to the development of the limited use/high volume IC family MIFARE Ultralight.

A pesar de lo anterior, debe tenerse en cuenta que las tarjetas o tags son sólo uno de los elementos que conforman el sistema de control de acceso. El hecho de que la tarjeta sea insegura puede compensarse aprovechando inteligentemente capas adicionales de seguridad, como se expone en [Building a safe NFC ticketing system [30c3]](https://www.youtube.com/watch?v=Czvn4L1r6f4). Aunque, es cierto que leer íntegramente el contenido de las misma facilita la recopilación de datos, y puede comprometer la integridad de la información en el sistema.

Adicionalmente, como se hizo patente en el caso holandés (y se documenta gráficamente en [DEFCON 16: The Anatomy of a Subway Hack: Breaking Crypto RFID's and Magstripes of Ticketing Systems](https://www.youtube.com/watch?v=amTB19V_sqg)), cuando la prensa y la opinión pública ponen en la agenda cuestiones tecnológicas que implican la seguridad y privacidad, la respuesta de las administraciones no responde a criterios exclusivamente técnicos. Es imprescindible introducir en la ecuación el hecho de que son sistemas con miles o millones de usuarios sin conocimientos tecnológicos suficientes. Deben gestionarse tanto la alarma social, desde el prisma de la comunicación, como el coste de implantación/actualización de sistemas seguros.

---

Hecha la exposición anterior, el objetivo de este proyecto es estudiar la seguridad de los sistemas NFC que utilizamos habitualmente. Nos hemos acostumbrado a llevar en la cartera/mochila/bolso hasta media docena de tarjetas que pueden ser leídas de forma inalámbrica. ¿Y si cualquiera pudiera leerlas mientras nos cruzamos en el ascensor, en la cafetería, en el metro, en un bar...? ¿Qué implicaciones tendría? ¿Nos afecta a los usuarios o a la empresa que provee el servicio? Si es una empresa pública, ¿"Hacienda somos todos"?

Los servicios que se analizan son:

- [Tarjeta universitaria](/notebook/nfcsec/univ)
- [Transporte colectivo](/notebook/nfcsec/trans)
- [Tarjeta de crédito](/notebook/nfcsec/cred)

# Otras Referencias

- [How to Crack Mifare Classic Cards](https://firefart.at/post/how-to-crack-mifare-classic-cards/)
- [Live RFID Hacking System](http://www.openpcd.org/Live_RFID_Hacking_System)
- [RFID Cooking with Mifare Classic](http://www.backtrack-linux.org/wiki/index.php/RFID_Cooking_with_Mifare_Classic)
  - *"MFOC is utility to compute (crack) all keys (A and B) to all sectors, providing at least one of the keys is already known".*
- [25c3: Chip Reverse Engineering](https://www.youtube.com/watch?v=Pp4TPQVbxCQ&t=1945s)
- [25C3: Analyzing RFID Security](https://www.youtube.com/watch?v=aO6zFpgtLj8)
- [27c3: Reverse Engineering a real-world RFID payment system](https://www.youtube.com/watch?v=FqO1PvRAy90)
- [RFID Treehouse of Horror [30c3]](https://www.youtube.com/watch?v=gTj5Ni7_zes)
- [DEFCON 17: RFID MythBusting ](https://www.youtube.com/watch?v=Y_r3-G1WyCg)
- [DEFCON 20: NFC Hacking The Easy Way](https://www.youtube.com/watch?v=x2rF3dD1Ns0)
- [DEFCON 23: RFIDiggity - Pentester Guide to Hacking HF/NFC and UHF RFID](https://www.youtube.com/watch?v=7o38hyQWw6g)
