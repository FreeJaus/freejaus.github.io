---
categories: [ nb-fjkb ]

title: 5. Tools
keywords:

publishdate: 2016-01-01
date: 2015-11-20
---

# BOM

- Electronics [92,5-179,5€]
  - 1x Power supply [20-30€]
  - 1x Power conversion [15-20€]
  - 1x Controller [15-45€]
  - 4(+1:2)x Stepper drivers [30-60€]
  - 3(+1)x Microswitches [2,5-4,5€]
  - 2x Thermistor [10-20€]
- Mechanics
  - 1x Fan [3-10€]
  - 4(+1:2)x Stepper [60-]
  
# Electrónica

- Por separado
  - Power supply >240W
     - http://bcndynamics.com/es/product/kit-ramps-drivers-0 [22,99€, 240W]
	 - http://bcndynamics.com/es/product/fuente-alimentaci%C3%B3n-24v15a [27,95€, 360W]
	 - https://www.modpc.com/articulo/J844/fuente-alimentacion-20a [21,05€, 240W]
	 - https://www.modpc.com/articulo/C0D0/fuente-400w-b-move-matx-2xsata-oem [17,00€, 400W mATX]
	 - https://www.modpc.com/articulo/C0CZ/fuente-500w-b-move-bm500wb-12cm-bulk [16,90€, 500W ATX]
	 - https://www.modpc.com/articulo/C1GH/fuente-500w-tacens-mars-gaming-mp500-14db-pfc-activo [32,30€, 500W ATX PFC Activo]
  - 1x Power conversion & Controller
     - https://www.cooking-hacks.com/arduino-mega-2560 [41€]
     - http://bcndynamics.com/es/product/ramps-v14 (15€)
	 - http://reprap.org/wiki/Generation_7_Electronics
  - 5x Driver PaP 50-60€
     - 4x 10€ [hasta 2-2,5A -X,Y,Z1,Z1-]
         - http://bcndynamics.com/es/product/driver-motor-pap-drv8825-rrw [10,49€, versión de 4 capas, no incluye disipador, aunque se recomienda]
     - 2x 5-10€ [extrusor(es)]
         - http://bcndynamics.com/es/product/driver-de-motor-pap-a4988 [3,99€, incluye disipador, <1A]
         - http://bcndynamics.com/es/product/drv8825%EF%BB%BF-driver-de-motor-paso-paso-stepstick [4,99€, incluye disipador]
  - 3x microswitch
     - http://bcndynamics.com/es/product/microswitch-en-placa-con-cable [1,40€, en placa y con cable]
  - 2x termistor 100K NTC
     - http://bcndynamics.com/es/product/termistor-100k-ntc-cable-1m-y-conector [5,99€, con cable de 1m y conector]
  - Ventilador 40x40mm
     - http://bcndynamics.com/es/product/ventilador-40x40mm-12v [3,50€, 0,09A]

- Kit RAMPS + 4x A4988 + 4x disipador http://bcndynamics.com/es/product/kit-ramps-drivers-0 [29,95€, 1€ de ahorro]
- Kit anterior + 1x A4988 + 1 disipador + Arduino Mega 2560 [72,50€, el arduino sale a 38,56€]
- Kit anterior + Fuente 12V/20A + 3x microswitch + 1x Termistor + 1x ventilador 40x40mm + cables USB, electrico, extensión, alimención... [110€, todos los cables salen gratis]

# Motores, husillos, roscas, ejes y rodamientos

- 4x NEMA 14/17 13-15€ [>=4.4Kg/cm 2.8-12V <1.68A 3-8mH]
  - http://bcndynamics.com/es/product/motor-paso-paso-nema14-30cm-cable (12,95€, LDO-35STH48-1684A NEMA 14 >4.4kg/cm 2.8V 1.68A/phase 2.8mH)
- 2x NEMA 14/17 10-15€ [extrusor(es)]

---

- 3d printer
- CNC fresa/taladro
- Extrusor plástico para molde de metal
- Pick And Place
- Horno/Grill soldador

- SLA stereolitography
---

las impresoras están centradas en velocidad y superficie, no en precisión
¿podemos adaptar algún modelo para que sea más preciso, a costa de sacrificar velocidad/superficie?

- http://reprap.org/wiki/Build_A_RepRap
- http://www.instructables.com/id/Arduino-Controlled-CNC-3D-Printer/

---

- http://diylilcnc.org/bigshoulders/
- shapeoko
---

- https://www.thingiverse.com/thing:227327/#files
- https://www.thingiverse.com/thing:801279
- https://www.thingiverse.com/thing:1264391
- https://www.thingiverse.com/thing:1134586

---

Ficha:

- Dimensiones mínimas `w,h`
- Tipo de montaje: plate o PCB.

---

- [library] layouts:
  - plate:
     - mx
	 - alps
	 - topre
  - pcb:
     - mx
	 - alps
	 - topre
- [struct] key:
  - offset: `x,y` [*Offset de cada tecla*]
  - size: `w,h` [*Tamaño de cada tecla, `0,0` para Enter ISO*]
  - legend: `'\n\n\n\n\n\n\n\n\n\n\n'` [*Posición `x,y` -en rango (1:4,1:3)- y contenido `'str'` de las leyendas de cada tecla*]
  - color: `#000000,#000000` [*Color de la tecla y de la leyenda*]
  - window: `none` [*Si la tiene, posición y forma de la ventana*]
  - use: `comb.,cmd` [*Funcionalidad normal, +shift, +fn, [opt] +macros de cada tecla*]
  - switch: `mx|alps|topre,ref` [*Tipo de switch de cada tecla*]
  - stab: `none` [*Si lo requiere, tipo de estabilizador de cada tecla*]
  - plate: `0` o `90` o `180` o `270`[*Si lo requiere, rotación de cada tecla para el layout para el plate*]
  - led: `white` [*Si se utiliza, color del LED de cada tecla*]
  - prof: `dsa,1` [*Perfil de cada tecla y la línea*]
  - addpcb: `none,0` [*Tipo de swicth y rotación para incluir un layout adicional en el plate y el PCB*]