---
linktitle: "Libre DeskBot"
title: "[Deskbot] Libre DIY Small Desktop CNC Machine"
pre: "cube"
keywords: cnc 3dprinter mill router pcb pap stepper rod leadscrew
---

# [[FreeJaus](https://github.com/FreeJaus)] Investigación

---

- **Título de la actividad**: [DeskBot] Libre (almost) DIY Small Desktop CNC Machine
- **Tipo**: TAZ
- **GEAs**: [ArduPi](https://github.com/FreeJaus/ardupi) | [Waves](https://github.com/FreeJaus/gea-waves)
- **Participante(s)**: l.mf, u.mc

---

- **Lugar**: Seminario 7i27 (Asociación juvenil FreeJaus Ikasle elkartea)
- **Formato**: autónomo
- **Sesiones**:
  1.

---

- **Objetivos**:
  - Generales:
     - Analizar los diseños de máquinas CNC de bajo coste existentes y conocer las ventajas y limitaciones para cada aplicación.
	 - Estudiar los costes de adquisicon/fabricación de los componentes necesarios.
  - Específicos:
	 - Diseñar el conjunto completo de piezas para disponer de una máquina CNC multiusos.
	 - Construir un prototipo funcional y verificar su validez mediante la fabricación de uno de los productos de referencia.

---

Este proyecto esta enfocado desde el punto de vista de quien no dispone de ninguna máquina CNC y quiere construir la primera para aprender sobre su funcionamiento, posibilidades y limitaciones. Con un coste muy ajustado, pretende ser una herramienta didáctica para poner en práctica conocimientos sobre mecánica, electricidad y electrónica. Aunque se tendrá en consideración al desarrollar el diseño, se supeditará la velocidad de trabajo de la herramienta a la calidad de los acabados. Asimismo, se priorizará la calidad en piezas de pequeñas dimensiones, en detrimento del trabajo menos preciso sobre piezas mayores.

Puesto que resulta difícil tomar decisiones sobre las medidas más adecuadas sin una idea clara de cómo es cada proceso, partimos de una lista de productos que queremos fabricar para establecer las especificaciones. Concretamente, los productos escogidos como referencia son:

- [FJKB] Libre DIY Keyboard
- Vehículos RC
- Thingiverse:
  - [OpenSCAD ISO metric thread library](http://www.thingiverse.com/thing:311031)
  - [Ultimaker quiet retraction](http://www.thingiverse.com/thing:53690)
  - [The Ultimate box maker](https://www.thingiverse.com/thing:1264391)
  - [PCB Workstation with Articulated Arms](https://www.thingiverse.com/thing:801279)
  - [Parametric Proble Holder](https://www.thingiverse.com/thing:1134586)
  - [Cherry MX key cap rubber o-ring mount tool](https://www.thingiverse.com/thing:227327)

  En lo que respecta a los tipos de cabezal a diseñar y los grados de libertad, este es el listado objetivo:

- X&Y, y ZF: Rotulador/pluma [Impresora/Plotter]
- X&Y, y ZF, (y A): Cortante/Cuchilla [Plotter]
- X|Y o X&Y, y Z, y M, (y A): Broca [Taladro]
- X|Y o X&Y, y Z, y M, (y A): Fresa [Fresadora]
- X&Y&Z, y E: Extrusor plástico [Impresora 3D]
- X&Y, y ZF, y E: Extrusor pasta [Dispensador de pasta]
- X|Y o X&Y, y Z o ZF: Lija/Trapo [Pulidor]
- X|Y o X&Y: Láser
- X&Y, y ZF, y A: Aspirador [Pick and Place]

donde

- X|Y: un eje, X o Y
- X&Y: dos ejes, X e Y
- Z: eje Z con recorrido completo
- ZF: eje Z con dos posiciones *fijas*
- M: motor DC o brushless
- E: extrusor de plástico o pasta
- A: bomba del aspirador

Además de lo anterior, se incluyen entre los requisitos los siquientes:

- Conexiones y programación para regular el proceso de reflow mediante un sensor de temperatura y control en tiempo real.
- Extrusor modificado para molde de silicona/metal.

La conclusión más evidente es que las utilidades tienen requisitos muy diferentes en lo que respecta a los grados de libertad del cabezal. La más exigente en este sentido es la impresión 3D, ya que requiere tres grados de libertad, además del accionamiento del extrusor. En lo que respecta al número de accionadores a utilizar, ese caso se ve igualado por el fresado o taladrado con aspirador. Las utilidades anteriores son, además, muy diferentes en lo que respecta a la dinámica del cabezal: las impresoras 3D tienen cabezales con componentes que se mueven a bajas velocidades, mientras que las brocas o taladros incluyen motores que giran a altas velocidades. Al mismo tiempo, las impresoras 3D suelen tener un área de trabajo de altura mucho mayor que las fresadoras/taladros.

Por lo anterior, a modo de vigilancia tecnológica, se han analizado los siguientes modelos, presentados como impresoras 3D, fresadoras CNC o mixtos:

- Multiuse bot
  - [Diyuware](http://www.diyouware.com/)
  - [Voxel OX](http://www.openbuilds.com/builds/voxel-ox-extendable-3d-printer-and-cnc-platform.2418/)
  - [Buildersbot](http://www.3ders.org/articles/20140616-build-your-own-arduino-controlled-buildersbot-cnc-3d-printer.html): [Arduino controlled CNC-3Dprinter](http://www.instructables.com/id/Arduino-Controlled-CNC-3D-Printer/)
- 3D printers
  - [RepRap Machines](http://reprap.org/wiki/RepRap_Machines)
     - [Itopie](http://reprap.org/wiki/ITopie)
     - [i3Berlin](http://reprap.org/wiki/I3Berlin)
  - [Lulzbot](https://www.lulzbot.com/)
  - DLP
     - [Chimera 60](http://www.instructables.com/id/Chimera-60-DLP-resin-3d-printer/)
     - [DIY High resolution 3D DLP printer]( http://www.instructables.com/id/DIY-high-resolution-3D-DLP-printer-3D-printer/)
- CNC
  - https://buildyourcnc.com/
  - [Mantis 9.1](http://makeyourbot.wikidot.com/mantis9-1)
     - [Cyclone](https://store.bq.com/es/cyclone)
     - [Ardu CNC](https://grabcad.com/library/ardu-cnc-1)
  -[OX CNC Machine]( http://www.openbuilds.com/builds/openbuilds-ox-cnc-machine.341/)
  - [Shapeoko](http://carbide3d.com/shapeoko/)
  - [bigShoulders](http://diylilcnc.org/bigshoulders/)
  - GrabCAD:
     - [CNC milling machine](https://grabcad.com/library/cnc-milling-machine-13)
     - [CNC X and Z axis](https://grabcad.com/library/cnc-x-and-z-axis-1)
  - [CNC 2020B DIY](http://es.aliexpress.com/item/PCB-milling-machine-CNC-2020B-DIY-cnc-wood-carving-machine-mini-engraving-machine-3050114A/32428314987.html
https://www.youtube.com/watch?v=S8SJnGtUW68)
- Laser
  - [500mW DK-5 Pro USB DIY láser](http://es.aliexpress.com/store/product/500mW-DK-5-Pro-USB-DIY-Laser-Engraver-Printer-Laser-Cutter-Engraving-Machine-Cutting-Machine/1776099_32541789106.html?spm=2114.04010208.3.118.ujQ6wY&ws_ab_test=searchweb201556_1,searchweb201644_5_505_506_503_504_301_502_10001_10002_10017_10010_10005_10011_10006_10003_10004_10013_10009_10008,searchweb201560_1,searchweb1451318400_-1,searchweb1451318411_6449&btsid=2a00dbde-d33e-43c6-bc51-8761d030a7f1)
- [Printer to vinyl cutter hack](www.instructables.com/id/Printer-to-vinyl-cutter-hack/)
- Pick and Place
  - [Liteplacer](http://www.liteplacer.com)
  - [DIY Pick and place V2]( http://www.briandorey.com/post/diy-pick-and-place-v2-project-complete)
  - [OpenFeeder](https://github.com/xboxhacker/OpenFeeder)
