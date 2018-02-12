---
linktitle: "PoC 2"
title: "Prueba de concepto 2"
---

# Objetivos

- Verificar que se puede leer el contenido íntegro de una tarjeta de la UPV/EHU.
- Verificar que se puede volcar el contenido leído en otra tarjeta, obteniendo una copia idéntica, a excepción del UID de la tarjeta.

# Herramientas

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

# Metodología

- Conectar el conversor USB-TTL al lector/grabador por UART.
- Conectar el conversor USB-TTL al ordenador por USB.
- Ejecutar `nfc-list` para comprobar que se detecta correctamente el lector/grabador.
- Acercar una tarjeta de la UPV/EHU y volver a ejecutar `nfc-list` para comprobar que se detecta la tarjeta.
- Ejecutar `mfoc -O base.mfd` para atacar la tarjeta y extraer el contenido íntegro (16 secciones, con 4 bloques de 128 bits o 16 bytes cada uno).
- Alejar la tarjeta de la UPV/EHU, acercar una tarjeta vacía y ejecutar `nfc-mfclassic w a base.mfd` para escribir el contenido leído.
- Ejecutar `mfoc -O copia.mfd` para comprobar que el contenido se ha escrito adecuadamente. Opcionalmente, se pueden indicar las claves conocidas para acelerar el proceso.
- Convertir el contenido a formato texto con `hexdump -vC base.mfd > base.dump` y `hexdump -vC copia.mfd > copia.dump`, y compararlos con `meld base.dump copia.dump`.

# Conclusiones

- Como algunas de las claves son las que vienen por defecto, se puede leer el contenido íntegro de una tarjeta de la UPV/EHU.
- Se puede escribir el contenido leído de la tarjea de la UPV/EHU en otra tarjeta, obteniendo una copia idéntica, a excepción del UID de la tarjeta.
