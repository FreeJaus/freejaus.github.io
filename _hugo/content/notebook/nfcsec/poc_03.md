---
draft: true
categories: [ nb-nfcsec ]

linktitle: "PoC 3"
title: "Prueba de concepto 3"
keywords: 

publishdate: 2016-04-02
date: 2016-04-02
---

# Objetivos

- Comprobar si, a pesar de tener diferentes UID, las cerraduras aceptan una copia realizada inmediatamente después de recargar una tarjeta de la UPV/EHU.

# Herramientas

Las mismas que en la PoC 2.

# Metodología

- Acercar la tarjeta al cargador.
- Realizar una copia siguiendo la metodología de la PoC 2.
- Acceder a cualquiera de las puertas.

# Conclusiones

- Las puertas abren sin diferencias con respecto a la tarjeta original, por lo que se concluye que las cerraduras no comprueban el UID de la tarjeta. ¡Sorpresa! El ataque más burdo ha funcionado a la primera.
- VECTOR 1: mediante "wireless pickpocketing", se pueden robar las credenciales más sensibles (las del PAS), que dan acceso a todo el edificio.
  - a) Con un lector portatil escondido en la manga.
  - b) Con un lector de mayor rango (requiere análisis CCTV)
     - b.i) Máquina de café
     - b.ii) Pared del cargador
     - b.iii) MITM Máquina de fichar
