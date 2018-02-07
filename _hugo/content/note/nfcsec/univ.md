---
linktitle: "Universidad"
title: "Tarjeta universitaria"
---

# Contexto

La tarjeta universitaria se utiliza para:

- Gestionar el acceso a todo tipo de puerta: aulas, laboratorios, despachos, salas de servicio, ascensores, garaje, biblioteca...
- Fichaje horario (PAS).
- Préstamo de recursos bibliográficos.
- Firma de actas (PDI)

El fabricante de las cerraduras, el software de la red y base de datos es [Salto-systems](http://www.saltosystems.com/en/), como puede deducirse de las siguientes referencias:

- [Formalización contrato 08/01/2014: *Servicios de mantenimiento preventivo y correctivo de cerraduras electrónicas en puertas interiores y exteriores que cuenten con el sistema de control de accesos fabricado e instalado por la empresa SALTO-SYSTEMS en los edificios de la UPV/EHU*](http://www.euskadi.eus/gobierno-vasco/contenidos/anuncio_contratacion/expjaso3208/es_doc/es_arch_expjaso3208.html)
- [Cita del Jefe de Seguridad de la universidad: *"La universidad (...) incorpora así la biblioteca (...) a la red de edificios [...] equipados con el sistema SALTO, los accesos de la biblioteca se unen a los cientos de puertas"*](http://www.i-sai.net/es/proyectos/sistemas-de-seguridad-en-centros-educativos/upv-ehu-biblioteca).

La empresa, originaria de y que mantiene la sede en Oiartzun, ofrece un servicio completo. A través de los vídeos y catálogos disponibles en la página web se observa que:

- Tiene un muy amplio catálogo de cerraduras, manillas, lectores, teclados... compatible con estándares de una amplia lista de paises. También tiene [presencia](http://www.saltosystems.com/en/quick-links/salto-systems-offices/) en todo el globo, y las lista de clientes es muy variada.
- El servicio se ofrece para una amplia variedad de contextos: comerciales, educativos, gubernamentales, sanidad, alojamiento, entretenimiento, transporte... Sin embargo, es aparentemente un único producto modular, por lo que es posible que todos los sistemas utilicen protocolos similares, si no idénticos.
- En el caso de las cerraduras que no tienen conexión a la [red virtual](http://www.saltosystems.com/en/product-range/explanation/72/salto-virtual-network-svn/) (ya sea cableada o inalámbrica), las tarjetas de los usuarios se utilizan para transferir información. Este sistema lo denomina *data-on-card*: *"It allows stand-alone locks to read, receive and write information via an encrypted and secure data-on-card system that utilizes the capabilities of RFID read/write technology. In SVN all access data is stored on and distributed by its operating smartcard. When presenting a smartcard to an offline stand-alone door, not only does this control access rights to that door but thanks to two-way communication, the door also writes data like blacklist information or battery status back to the smartcard"*.
- Ofrecen, opcionalmente, módulos [inalámbricos](http://www.saltosystems.com/en/product-range/explanation/31/salto-wireless/) para complementar el sistema *data-on-card*.
- El sistema es compatible con un amplio abanicos de [dispositivos RFID](http://www.saltosystems.com/en/product-range/explanation/7/rfid/).
- Ofrece, opcionalmente, la posibilidad de actualizar algunos modelos de tarjetas a través de Bluetooth Low Energy (BLE). Lo denominan [Mobile Solutions](http://www.saltosystems.com/en/product-range/explanation/1/salto-mobile-solutions/).


poca información técnica
no hay precios
no parece fácil comprar un producto suelto (ingeniería social)

El sistema en sí es compatible con otras tarjetas más seguras, como las DESfire (si se gestionan adecuadamente).

  - [Salto](http://www.saltosystems.com/en/product-range/explanation/31/salto-wireless/)


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

# Dudas por resolver

- ¿Puede que "descargar" la tarjeta sea que caduque un token?
- Con Android no parece posible emular una tarjeta cualquiera por limitaciones de software al establecer el UID. Pero el hardware es posible que lo soporte.
- ¿Puede ser seguro el sistema aunque el contenido de las tarjetas sea legible y copiable?
  - Comprobar la UID de la tarjeta es inútil, ya que hay disponibles tarjetas con UID programable.
  - Two-factor. DNI 3.0, PIN...

# Tareas

- Escribir el contenido de una tarjeta no caducada en una que sí lo esté. Objetivo: ¿se pueden reutilizar lar tarjetas caducadas aunque la aplicación aparentemente no se lo permita al administrador?
- Adquirir tarjeta con UID programable para poder interactuar con el cargador sin riesgo de hacer saltar logs.
- Parece posible emular una tarjeta con el propio grabador, aunque puede haber problemas de timing en la comunicación.
- [Salto](http://www.saltosystems.com/) tiene bastante información promocional sobre su sistema en la página web. Se exponen las cerraduras autónomas, y el lector que se ha denominado "cargador" en este informe. Es particularmente relevante que se utilizan las tarjetas de los usuarios para transferir información entre las cerraduras y el cargador (conectado a la red). Sistema que denominan data-on-card. Se especifica que se transmite el estado de la batería de las cerraduras. Parece entenderse que también se actualizan así los permisos de las tarjetas. Posibilidades de ataque:
  - Modificación de una tarjeta para que altere los permisos de una cerradura, independientemente de lo que esté registrado en la base de datos. ¿Base de datos paralela?
  - Denegación de servicio informando al cargador de que todas las cerraduras están sin batería

# Vectores de ataque

leer el interior de una taquilla
biblioteca

---

sniffing de la comunicación
