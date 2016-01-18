---
categories: [ nb-fjkb ]

title: 5. Tools
keywords:

publishdate: 2016-01-01
date: 2015-11-20
---

Como resultado de las decisiones de diseño tomadas en los bloques anteriores, se dispondrá de una ficha por producto, donde se reúna toda la información relevante para la fabricación del mismo. Ésta puede representarse como una estructura de tipo árbol:

- Dimensiones:
  - Mínimas `w,h`
  - Márgenes: `l,t,r,b`
- Montaje:
  - Plate o PCB.
- Vector de teclas:
  - offset: `x,y` [*Offset de cada tecla*]
  - size: `w,h` [*Tamaño de cada tecla, `0,0` para Enter ISO*]
  - legend: `'\n\n\n\n\n\n\n\n\n\n\n'` [*Posición `x,y` -en rango (1:4,1:3)- y contenido `'str'` de las leyendas de cada tecla*]
  - color: `#000000,#000000` [*Color de la tecla y de la leyenda*]
  - window: `none` [*Si la tiene, posición y forma de la ventana*]
  - use: `comb.,cmd` [*Funcionalidad normal, +shift, +fn, [opt] +macros de cada tecla*]
  - switch: `mx|alps|topre,ref` [*Tipo de switch de cada tecla*]
  - stab: `none` [*Si lo requiere, tipo de estabilizador de cada tecla*]
  - rot: `0` o `90` o `180` o `270`[*Si lo requiere, rotación de cada tecla para el layout para el plate y el PCB*]
  - led: `white` [*Si se utiliza, color del LED de cada tecla*]
  - prof: `dsa,1` [*Perfil de cada tecla y la línea*]
  - addpcb: `none,0` [*Tipo de swicth y rotación para incluir un layout adicional en el plate y el PCB*]

# Software
  
Para interpretar cada ficha, se requieren librerías comunes que contengan los modelos a utilizar en los diferentes procesos:
  
- Layouts:
  - Plate:
     - mx
	 - alps
	 - topre
  - PCB:
     - mx
	 - alps
	 - topre
- Keys:
  - 

*NOTA: ¿cómo llegamos desde el diseño del layout online hasta el layout del plate y del PCB? Se han referenciado en los bloques anteriores varios diseños OpenSource, y también se ha referenciado al menos una herramienta para cada paso. ¿Qué falta para cubrir las necesidades indicadas en la ficha? ¿Se pueden adaptar las herramientas ya existentes? ¿Se pueden utilizar sólo con algo de pre y post procesado?*

- [keyboard-layout-editor](http://www.keyboard-layout-editor.com/)
- [kbl2scad](https://bitbucket.org/afqueiruga/kbl2scad)
  - `python kbl2scad.py my_layout_file -o keys.scad`

# Procesos de fabricación

El producto del procesamiento de cada ficha es una serie de modelos en 3D, y los procesos de fabricación asociados, de acuerdo con el siguiente [diagrama](http://knsv.github.io/mermaid/live_editor/#/view/Z3JhcGggVEQKICAgIDAoQ2FyZCktLT5NW1BsYXRlc107CiAgICAwKENhcmQpLS0-RVtQQ0JzXTsKICAgIDAoQ2FyZCktLT5LW0tleXNdOwoKICAgIE0tLT5NZChEcmlsbCk7CiAgICAgIE1kLS0-TXMoU2F3KTsKICAgICAgTWQtLT5NbShNaWxsKTsKICAgIE0tLT5NbChMYXNlcik7CgogICAgTXMtLT5NbyhTbW9vdGgpOwogICAgTW0tLT5NbzsKICAgIE1sLS0-TW87CgogICAgTW8tLT5NYihCZW5kKTsKCiAgICBFLS0-RWQoRHJpbGwpOwogICAgRWQtLT5FbShNaWxsKTsKICAgIEUtLT5FbChMYXNlcik7CiAgICBFLS0-RWxwKExhc2VyIHByaW50ZXIpOwogICAgRWxwLS0-RWFwKEFjZXRhdGUpOwogICAgRWFwLS0-RWFjKENvbnRhY3QgY29waWVyKTsKICAgIEVscC0tPkVwcChQYXBlcik7CiAgICBFcHAtLT5FcGkoSXJvbik7CiAgICBFYWMtLT5FZVtFdGNoaW5nXTsKICAgIEVwaS0tPkVlOwogICAgRWUtLT5FZWQoRHJpbGwpOwoKICAgIEVtLS0-RWgoQ2xlYW4pOwogICAgRWgtLT5FczsKICAgIEVsLS0-RWg7CiAgICBFZWQtLT5FaDsKCiAgICBFaC0tPkVhbXAoUHJpbnQgTWFzayk7CiAgICBFYW1wLS0-RWFtYyhDdXQgTWFzayk7CiAgICBFaC0tPkVhbWwoTWFzayBQbG90dGVyKTsKICAgIEVhbWMtLT5FYW1hKEFwcGx5IFBhc3RlKTsKICAgIEVhbWwtLT5FYW1hOwogICAgRWgtLT5FYWQoUGFzdGUgZGlzcGVuc2VyKTsKICAgIEVhZC0tPkVwKFBpY2sgYW5kIFBsYWNlKTsKICAgIEVhbWEtLT5FcDsKICAgIEVwLS0-RXIoUmVmbG93KTsKICAgIEVyLS0-RXMoU29sZGVyKTsKICAgIEVzLS0-RWMoQ29hdCk7CgogICAgSy0tPktwKDNEIHByaW50KTsKICAgIEtwLS0-S2VzOwogICAgS3AtLT5LZTIoVHdvLXNob3QpOwogICAgS2UyLS0-S2U7CiAgICBLcC0tPktwc3MoU21vb3RoKTsKICAgIEtwc3MtLT5LcHMoU2lsaWNvbmUpOwogICAgS3BzLS0-S29bTW91bGRdOwogICAgSy0tPkttKE1pbGwpOwogICAgS20tLT5LZChEcmlsbC9UaHJlYWQpOwogICAgS2QtLT5LcyhTbW9vdGgpOwogICAgS3MtLT5LbzsKICAgIEtvLS0-S2UoRXh0cnVkZSk7CiAgICBLZS0tPktlcyhTbW9vdGgpOwoKICAgIE1iLS0-VGVzdDsKICAgIEVjLS0-VGVzdDsKICAgIEtlcy0tPlRlc3Q7).

```
graph TD;
    0(Card)-->M[Plates];
    0(Card)-->E[PCBs];
    0(Card)-->K[Keys];

    M-->Md(Drill);
      Md-->Ms(Saw);
      Md-->Mm(Mill);
    M-->Ml(Laser);

    Ms-->Mo(Smooth);
    Mm-->Mo;
    Ml-->Mo;

    Mo-->Mb(Bend);

    E-->Ed(Drill);
    Ed-->Em(Mill);
    E-->El(Laser);
    E-->Elp(Laser printer);
    Elp-->Eap(Acetate);
    Eap-->Eac(Contact copier);
    Elp-->Epp(Paper);
    Epp-->Epi(Iron);
    Eac-->Ee[Etching];
    Epi-->Ee;
    Ee-->Eed(Drill);

    Em-->Eh(Clean);
    Eh-->Es;
    El-->Eh;
    Eed-->Eh;

    Eh-->Eamp(Print Mask);
    Eamp-->Eamc(Cut Mask);
    Eh-->Eaml(Mask Plotter);
    Eamc-->Eama(Apply Paste);
    Eaml-->Eama;
    Eh-->Ead(Paste dispenser);
    Ead-->Ep(Pick and Place);
    Eama-->Ep;
    Ep-->Er(Reflow);
    Er-->Es(Solder);
    Es-->Ec(Coat);

    K-->Kp(3D print);
    Kp-->Kes;
    Kp-->Ke2(Two-shot);
    Ke2-->Ke;
    Kp-->Kpss(Smooth);
    Kpss-->Kps(Silicone);
    Kps-->Ko[Mould];
    K-->Km(Mill);
    Km-->Kd(Drill/Thread);
    Kd-->Ks(Smooth);
    Ks-->Ko;
    Ko-->Ke(Extrude);
    Ke-->Kes(Smooth);

    Mb-->Test;
    Ec-->Test;
    Kes-->Test;
```

- [Circuit Board Lab]( http://www.instructables.com/id/Circuit-Board-Lab-POV-Business-Card/?ALLSTEPS)
- [Cheap and easy toner transfer for PCB making]( www.instructables.com/id/Cheap-and-Easy-Toner-Transfer-for-PCB-Making)
- [Toner transfer](http://www.dr-lex.be/hardware/tonertransfer.html)
- [Modification of the Lexmark E260 for Direct Laser Printing of PCBs]( http://www.instructables.com/id/Modification-of-the-Lexmark-E260-for-Direct-Laser--1/?ALLSTEPS)
- [Desktop Production of Open Theremin](https://www.youtube.com/watch?v=i0ZT4y3DYrY)

# Herramientas/Maquinaria

Así, las herramientas a utilizar son:

- Necesarias:
  - Impresora láser o plotter CNC
  - Taladro o taladro CNC
  - Sierra para metal o fresadora CNC
  - Lijas y pulidores para metal
  - Soldador
  - Impresora 3D por adición o SLA (stereolitography)
- Opcionales
  - Doblador aluminio
  - Láser CNC
  - Acetato e insoladora, o plancha; y utensilios para el atacado (por ejemplo, caja estanca con salida de aire mediante tubo, para evitar la inhalación).
  - PickAndPlace CNC
  - Grill/Sandwichera con regulador y control para reflow
  - Soplete
  - Extrusor para molde
  
Aunque no es estrictamente necesario para la fabricación de prototipos, el uso de herramientas de control númerico (CNC) permite acelerar los aspectos más repetitivos. Este hecho es especialmente relevante, puesto que el número de piezas que compone cada teclado es elevado. Sin embargo, no es razonable adquirir una máquina para fabricar sólo un teclado, ya que su coste será típicamente mayor que el de uno de alta gama.

No obstante, si se puede construir una máquina con un coste inferior a 250€, y con ella el coste de un teclado completamente personalizado se reduce a 75€, con cuatro unidades se habrá amortizado la inversión. El uso de una sola máquina tiene el inconveniente de no permitir la paralelización de procesos. Mas, enfocado en tiradas pequeñas sin tiempos de entrega que cumplir, es una limitación asumible. Por otro lado, desde un punto de vista didáctico, la adquisición de una máquina CNC multiusos con precisión suficiente en todos los procesos es un reto en sí. Concretamente, pueden ser útiles los siguientes cabezales:

- Rotulador/pluma [Impresora/Plotter]
- Cortante/Cuchilla [Plotter]
- Broca [Taladro]
- Fresa [Fresadora]
- Extrusor plástico [Impresora 3D]
- Extrusor pasta [Dispensador de pasta]
- Lija/Trapo [Pulidor]
- Láser
- Aspirador [Pick and Place]

El proyecto [DeskBot](/notebook/deskbot), paralelo a FJKB, estudia la viabilidad de construir una máquina como la descrita, con los medios disponibles. Particularmente, FJKB es uno de los productos escogidos para verificar las especificaciones. En caso de disponer de DeskBot, u otra máquina con características equivalentes, el listado de herramientas sería:

- Necesarias
  - Soldador
- Recomendada
  - Grill/Sandwichera con regulador
  - Extrusor para molde
- Opcionales
  - Impresora láser
  - Taladro/Dremel
  - Sierra para metal
  - Lijas y pulidores para metal
  - Doblador aluminio
  - Acetato e insoladora, o plancha; y utensilios para el atacado
  - Soplete