---
categories: [ nb-fjkb ]

title: 0. Full custom
keywords:

publishdate: 2016-01-01
date: 2015-11-20
---

Tras analizar el [mercado](/notebook/fjkb/commercial), y observar la limitada oferta disponible en europa para layouts ISO compactos en formato ES, se plantea la posibilidad de fabricar un teclado modular libre -no sólo open source- completamente a medida, lo que implica tanto el diseño mecánico como el electrónico e informático. Se analizarán los costes detalladamente. Por un lado, para disponer un presupuesto completo que permita valorar si merece la pena fabricar un número muy reducido de unidades (1-3), o si es más razonable adquirir un modelo comercial/custom y modificarlo. Por otro lado, para estudiar la viabilidad comercial de una startup que ofrezca un catálogo de piezas full custom para teclados mecánicos DIY. Tratándose de un proyecto libre, el margen de beneficio de la startup estará en:

- La disposición de la maquinaria necesaria para fabricar las piezas, o del stockage de grandes lotes.
- El know-how:
  - Para entusiastas, que quieren diseñar y personalizar cada parte del teclado hasta disponer de parametrizaciones/descripciones completas, pero no quieren profundizar en los detalles de fabricación/programación.
  - Para usuarios sin conocimientos técnicos, que no saben utilizar las herramientas para generar parametrizaciones/descripciones completas, y requieren trabajos de asesoría y/o diseño.
 
Naturalmente, no hemos sido los primeros en plantear esta posibilidad. [GeekHack](http://wiki.geekhack.org/index.php?title=GeekHackWiki) es un espacio dedicado a dispositivos de entrada (teclados, touchpads, trackballs...), con especial interés en la ergonomía y en disposiciones no usuales. Entre otras, hay secciones específicas sobre keycaps, y sobre cases para teclados CoolerMaster. En [DESKthority](http://deskthority.net/) también se reúnen muchos entusiatas de los teclados mecánicos, y disponen de una [wiki](http://deskthority.net/wiki/Main_Page). La comunidad con más crecimiento en los últimos años está en [reddit.com/r/MechanicalKeyboards](https://www.reddit.com/r/MechanicalKeyboards/), aunque es necesario acostumbrarse a la forma de estructurar el contenido en la plataforma.

<!--
- [Phantom](http://deskthority.net/wiki/Phantom)
  - [Phantom instruction guide](http://deskthority.net/wiki/Phantom_instruction_guide)
  - [Phantom group buy](http://deskthority.net/wiki/Phantom_Group_Buy)
  - Firmware
     - https://geekhack.org/index.php?topic=26742.0
     - https://github.com/BathroomEpiphanies/AVR-Keyboard
     - https://github.com/Tranquilite0/Teensy-Keyboard
     - https://github.com/doxkb/tmk_keyboard
-->

En 2012, bajo el nombre [Phantom](http://deskthority.net/wiki/Phantom), diseñaron en DESKthority el PCB y soporte de un teclado basado en la tarjeta [Teensy](https://www.pjrc.com/teensy/) (compatible con Arduino). Pensado para encajar en un [Filco Majestouch](http://deskthority.net/wiki/Filco_Majestouch), están disponibles los esquemas y el firmware, además de los registros de múltiples pedidos conjuntos de piezas y keysets. Es especialmente reseñable que se diseñó un solo PCB para soportar diferentes layouts (ANSI, ANSI/WIN, ISO, ISO/WIN y 7BIT), incluso formato Compact (aunque el original fuera TKL). Es, por lo tanto, una base muy sólida sobre la que empezar. Dentro del abanico de layouts compatibles, la única modificación que requiere el PCB, a priori, es el soporte para los LEDs de retroiluminación. 

Es digno de subrayar la cantidad de contenido que hay en la red, especialmente generado durante los últimos cinco años, con el éxito de Arduino, las impresoras 3D y el crowdfunding como impulsores. Sin embargo, la mayoría de la información está incompleta o muy dispersa. No se ha encontrado ningún proyecto documentado de principio a fin. En general, las referencias se centran en algún aspecto específico (la base, el layout, los switches, los keycaps, el firmware...). Las comunidades anteriores reúnen prácticamente toda la información necesaria, pero se encuentra mezclada con referencias a múltiples fabricantes y modelos.

Por lo anterior, el objetivo es elaborar una guía en cuatro bloques, sólo con la información imprescindible para tomar las decisiones críticas en el diseño y la fabricación de un teclado full-custom. Se añadirán referencias adicionales para que se pueda profundizar en cada aspecto. A la hora de montar el teclado, todos los componentes tienen que complementarse para ofrecer la funcionalidad de seada. Por ello, resulta difícil analizar cada parte por separado. Se recomienda realizar una primera lectura ligera, y navegar, tanto por las páginas de algunos de los fabricantes mencionados anteriormente como GeekHack y DESKthority, para tener una idea general de la variabilidad en el interesante mundo del diseño de teclados, y perfilar las preferencias a la hora de afrontar la toma de decisiones. Los contenidos de los bloques en que se divide la guía se han escogido de forma que cada uno de ellos se ve condicionado por las decisiones tomadas en los anteriores, pero no por los siguientes. A continuación se muestran las palabras clave de cada uno:

1. Layout
2. Keys: switches keycaps stabilizers
3. Electronics: PCB controller
4. Mechanics: base plate connectors
5. Tools

El quinto bloque, sobre herramientas, reune referencias para fabricar las máquinas que permitan no tener que externalizar ninguno de los pasos de fabricación y montaje. Esta sección está destinada, por tanto, a analizar la viabilidad de producir a pequeña-media escala los accesorios que no están disponibles en europa y cuyos costes de importanción encarecen notablemente el producto. También, la de ofrecer una personalización para pequeñas tiradas que no ofrecen otros fabricantes con mayor volumen de negocio.


