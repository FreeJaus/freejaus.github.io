---
draft: true
categories: [ nb-nfcsec ]

linktitle: "PoC 5"
title: "Prueba de concepto 5"
keywords: 

publishdate: 2016-04-02
date: 2016-04-02
---

# Objetivos

- Observar las diferencias en el contenido de diferentes tarjetas de la UPV/EHU, con perfiles variados.
- Observar las diferencias en el contenido de diferentes tarjetas, caducadas y sin caducar, con permisos iguales y diferentes.

# Herramientas

Las mismas que en la PoC 2, pero utilizando varias tarjetas de la UPV/EHU.

# Metodología

- Para cada tarjeta, realizar una lectura con `mfoc`, tal como se ha procedido en la PoC 2.
- Convertir todos los volcados a ASCII con `hexdump`.
- Comparar el contenido con Meld, Calc, scripts...

# Conclusiones

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
