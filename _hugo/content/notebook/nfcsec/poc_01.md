---
draft: true
categories: [ nb-nfcsec ]

linktitle: "PoC 1"
title: "Prueba de concepto 1"
keywords: 

publishdate: 2016-04-02
date: 2016-04-02
---

# Objetivos

- Verificar que se puede interactuar con dispositivos NFC con un lector de bajo coste.
- Verificar que el tipo de tarjeta utilizado en la UPV/EHU (para PDI, PAS y Alumnado) funciona a 13.56MHz.
- Verificar que el tipo de tarjeta utilizado en la UPV/EHU es "Mifare Classic 1K".

# Herramientas

- Hardware
  - Lector/grabador NFC/RFID basado en [PN532](http://www.nxp.com/documents/user_manual/141520.pdf) de [NXP](http://www.nxp.com/) [a partir de 8€ en aliexpress -envio gratios]
  - Arduino Nano 328P [a partir de 1,5€ en aliexpress -envío gratis-]
  - Portátil o Single-Board-Computer
  - Tarjeta de la UPV/EHU (con permisos activos o caducados)
- Software
  - [Arduino IDE](https://www.arduino.cc/en/Main/Software) (software libre gratuito)
  - Librería [Adafruit-PN532](https://github.com/adafruit/Adafruit-PN532) (software libre gratuito)

# Metodología

- Conectar el lector/grabador al Arduino [por SPI](https://learn.adafruit.com/adafruit-pn532-rfid-nfc/breakout-wiring).
- Conectar el Arduino al ordenador por USB.
- Abrir el ejemplo `readMifare` y programar el Arduino.
- Abrir el monitor serie y seleccionar la velocidad de transmisión indicada en el sketch.
- Acercar una tarjeta de la UPV/EHU y comprobar la lectura.

# Conclusiones

- El diseño libre de la placa basada en PN532, que funciona con dispositivos a 13.56MHz, es suficiente para interactuar con tarjetas de la UPV/EHU, que son reconocidas como "Mifare Classic 1K".
- Un microcontrolador de 8bits es suficiente para gestionar el lector/grabador. Lo que cobra sentido al analizar la datasheet, ya que el PN532 incluye un microcontrolador basado en el 8051.
