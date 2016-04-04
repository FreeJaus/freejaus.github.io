---
draft: true
categories: [ nb-nfcsec ]

linktitle: "PoC 4"
title: "Prueba de concepto 4"
keywords: 

publishdate: 2016-04-02
date: 2016-04-02
---

# Objetivos

- Identificar si la cerradura tiene algún efecto sobre una copia, a pesar de autorizar el acceso.
- Identificar qué efecto tiene el cargador sobre una tarjeta copiada, pero con UID diferente.

# Herramientas

Las mismas que en la PoC 2.

# Metodología

- Leer el contenido de la copia realizada en la PoC 4, después de acceder a la puerta.
- Acercar la copia al cargador, después de haber accedido a la puerta.
- Leer el contenido de la copia, después de haberla recargado.
- Comparar los resultados con `hexdump` y `meld`.

# Conclusiones

- Las dos lecturas realizadas son exactamente iguales que la realizada inmediatamente después de realizar la copia. Por lo tanto, ni la cerradura ni el cargador han tenido ningún efecto en el contenido.
- Puesto que las tarjetas "descargadas" por cerraduras defetuosas recuperaban el funcionamiento después de pasarlas por el cargador, es improbable que no tenga ninguna conexión con la base de datos. Hay varias interpretaciones posibles:
  - a) El cargador utiliza un campo diferente del UID para comprobar la tarjeta, por lo que, como la cerradura, no es capaz de diferenciar la copia y la recarga correctamente.
  - b) El cargador identifica que el UID no es correcto y no realiza ninguna modificación en la tarjeta.
     - b.i) Registra en el sistema una alarma (se registran todos los intentos de carga).
     - b.ii) Se considera un error de lectura y no se registra el evento en el sistema (sólo se registran los intentos de carga positivos).
- No es seguro realizar pruebas reiteradas (sin espaciarlas), hasta conocer mejor el funcionamiento del cargador y de la red.
