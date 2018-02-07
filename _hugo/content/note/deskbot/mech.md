---
categories: [ nb-deskbot ]

linktitle: Mecánica
title: Estructura y Mecanismos
keywords:

publishdate: 2016-01-01
date: 2015-11-20
---

- [How NOT to make a CNC mill](http://twilightrobotics.com/cnc/cncnot2)
- 3D vs Milling
  - Las impresoras caseras están más centradas en velocidad y superficie, y menos en precisión, para lo que se utiliza SLA.
  - Los husillos limitan la velocidad de la impresión 3D en comparación con las correas, pero requieren menor mantenimiento (calibración) para trabajar con precisiones más pequeñas.
  - [Accuracy vs precision and threaded rod vs leadscrews in 3d printers](http://www.protoparadigm.com/news-updates/accuracy-vs-precision-and-threaded-rod-vs-leadscrews-in-3d-printers/)
  - Las maquinas de mecanizado llevan husillos normalmente ocultos para que no entre la viruta.
- ¿Qué potencia mínima deben tener los motores (tanto paso a paso como DC/brushless)?
  - [Structural Design of a Desktop CNC Mill]( http://www.jgorasia.com/Files/Spring09/mechSolids/destopCNCmechSolids.pdf)
  - http://reprap.org/wiki/Stepper_motor
- [RepRap - Milling and Drilling Head](http://reprap.org/wiki/Milling_and_Drilling_Head)
- http://www.mosaicmanufacturing.com/
- Fin de carrera, u otro sensor en el cabeza, para calibrar/identificar los límites de la base

# Decisiones de diseño

- Integración de la electrónica (controlador, potencia, LCD, interruptores...) y alimentación en el chasis, en una o varias cajas/huecos.
- LCD + botones reemplazable/movible, que se pueda quitar de la caja y colocarlo en otra posición (con el soporte adecuado).  
- Que la heatbed, y otros elementos que se deban cambiar/ajustar con frecuencia, se fijen con thumbwheels/thumbscrews.
- Mínimizar el número de piezas a cambiar para sustituir un cabezal por otro.
- Posibilidad de utilizar refrigeración líquida para los motores/extrusores/hotends.

# Materiales
  
## Estructura

- Aluminio
- MDF
- HDF
- Corian
- CompacTop

De entre las soluciones analizadas:

- Tablero MD/MDF en [Mantis](http://makeyourbot.wikidot.com/mantis9-1) o [Itopie](http://reprap.org/wiki/ITopie); o aluminio en [Prusa i3](http://reprap.org/wiki/Prusa_i3), [Prisa i3 Rework](http://reprap.org/wiki/Prusa_i3_Rework) o [I3Berlin](http://reprap.org/wiki/I3Berlin)
  - Facilidad para (des)montar y posibilidad de guardar en una caja.
  - Rigidez, sobre todo al cargar herramientas pesadas o que produzca vibraciones (al usarla como CNC). Al mismo tiempo, absorción de las vibraciones.

## Barras calibradas/rectificadas

- Acero

## Husillos y tuercas

- Acero y bronce
  
# Base

# 3D print

- [2-in-1 fan duct: extruder and filament cooler for E3D V6 and others](http://www.thingiverse.com/thing:839620)
- Auotlimpiado del extrusor: https://www.lulzbot.com/

# Mill/engraver

- [PCB Milling Attachment for a Prusa i3 Rework](http://www.thingiverse.com/thing:264104): this model attaches a 225-01 Flex Shaft Attachment made by Dremel to a Prusa i3 for PCB Milling or Simple CNC milling.