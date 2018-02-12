---
categories: [ nb-deskbot ]

title: Presupuesto
keywords:

publishdate: 2016-01-01
date: 2015-11-20
---

# Referencias

## Electronics

- **1x Power supply >240W** [20-30€]
  - 12V/28A 500W B-MOVE ATX vent. 12cm SATA [[16,90€]( https://www.modpc.com/articulo/C0CZ/fuente-500w-b-move-bm500wb-12cm-bulk)]
  - 12V/20A 400W B-MOVE mATX [[17,00€ modpc]https://www.modpc.com/articulo/C0D0/fuente-400w-b-move-matx-2xsata-oem)]
  - 12V/20A 240W [[21,05€ modpc](https://www.modpc.com/articulo/J844/fuente-alimentacion-20a) | [22,99€ bcndynamics](http://bcndynamics.com/es/product/fuente-alimentaci%C3%B3n-12v20a)]
  - 12V/30A 360W [[27,95€ bcndynamics](http://bcndynamics.com/es/product/fuente-alimentaci%C3%B3n-24v15a)]
  - 12V/30A 500W Tacens Mars MP500 ATX APFC [[32,30€]( https://www.modpc.com/articulo/C1GH/fuente-500w-tacens-mars-gaming-mp500-14db-pfc-activo)]
- **1x Power conversion** [15-20€]
  - RAMPS 1.4 [[15€ bcndynamics](http://bcndynamics.com/es/product/ramps-v14)]
- **1x Controller** [5-45€]
  - Arduino Mega 2560 R3 [[41€ cooking-hacks](https://www.cooking-hacks.com/arduino-mega-2560)]
  - Mega 2560 r3 [[5,37€ aliexpress](http://es.aliexpress.com/item/MEGA-2560-R3-ATmega2560-R3-AVR-USB-board-for-Arduino-2560-MEGA2560-R3-NO-USB/32222306768.html)]
- **3(+1:2)x Stepper drivers** [30-60€]
  - Hasta 2-2,5A -X,Y,Z-
     - DRV8825 [[10,49€ bcndynamics](http://bcndynamics.com/es/product/driver-motor-pap-drv8825-rrw) (versión de 4 capas, no incluye disipador, aunque se recomienda)]
     - DRV8825  [[4,99€ bcndynamics](http://bcndynamics.com/es/product/drv8825%EF%BB%BF-driver-de-motor-paso-paso-stepstick) (incluye disipador)]
  - Hasta 1A -extrusores-
     - A4988 [[3,99€ bcndynamics](http://bcndynamics.com/es/product/driver-de-motor-pap-a4988) (incluye disipador)]
- **1x DC/Brushless bridge**
- **3(+1)x Microswitches** [2,5-4,5€]
  - [[1,40€ bcndynamics](http://bcndynamics.com/es/product/microswitch-en-placa-con-cable) (en placa y con cable)]
- **2x Thermistor** [10-20€]
  - 100K NTC  [[5,99€ bcndynamics](http://bcndynamics.com/es/product/termistor-100k-ntc-cable-1m-y-conector) (con cable de 1m y conector)]

Es común encontrar kits que incluyan una placa de conversión de potencia, varios drivers para motores paso a paso, un controlador, microswitches...:
  
- Kits bcndynamics
  - RAMPS + 4x A4988 + 4x disipador [[29,95€](http://bcndynamics.com/es/product/kit-ramps-drivers-0) (1€ de ahorro)]
  - Kit anterior + 1x A4988 + 1 disipador + Arduino Mega 2560 [72,50€, el arduino sale a 38,56€]
  - Kit anterior + Fuente 12V/20A + 3x microswitch + 1x Termistor + 1x ventilador 40x40mm + cables USB, electrico, extensión, alimención... [110€, todos los cables salen gratis]
- Kits aliexpress
  - RAMPS 1.4 + 5x DRV8825 + 5x disipador [[12,95€](http://es.aliexpress.com/item/3D-Printer-Kit-RAMPS-1-4-Controller-Control-Panel-for-Arduino-Mega-Devlepment-Board-5x-DRV8825/32359381891.html)]
  
## Mechanics
  
- **1x Fan** [3-10€]
  - 40x40mm 0x09A [[3,50€ bcndynamics](http://bcndynamics.com/es/product/ventilador-40x40mm-12v)]
- **6x Precision/Calibrated/Rectified stainless steel shaft (round bar)**
  - 8mm
  - 10mm
     - 300mm [[4,76€ aliexpress](http://es.aliexpress.com/store/product/Brand-New-Hard-OD-10mm-x-300mm-Cylinder-Liner-Rail-Linear-Axis-Chrome-Shaft-Resistance-Excellent/1803726_32513021150.html?spm=2114.04010208.3.37.DzZWBh&ws_ab_test=searchweb201556_1,searchweb201644_5_505_506_503_504_301_502_10001_10002_10017_10010_10005_10011_10006_10003_10004_10013_10009_10008,searchweb201560_1,searchweb1451318400_-1,searchweb1451318411_6449&btsid=7399ec88-6796-46f8-9755-7a8d8aa59d25)]
     - 400mm [[6,22€ aliexpress](http://es.aliexpress.com/store/product/Brand-New-Hard-OD-10mm-x-400mm-Cylinder-Liner-Rail-Linear-Axis-Chrome-Shaft-Resistance-Excellent/1803726_32513029037.html?spm=2114.04010208.3.112.DzZWBh&ws_ab_test=searchweb201556_1,searchweb201644_5_505_506_503_504_301_502_10001_10002_10017_10010_10005_10011_10006_10003_10004_10013_10009_10008,searchweb201560_1,searchweb1451318400_-1,searchweb1451318411_6449&btsid=7399ec88-6796-46f8-9755-7a8d8aa59d25)]
  - 12mm
- **12x Linear bearing**
  - 8-15mm
     - LM8UU (24mm)
     - LM8LUU (45mm)
  - 10-19mm
     - LM10UU (29mm)
     - LM10LUU (55mm)
  - 12-21mm
     - LM12UU (30mm)
     - LM12LUU (57mm)
- **2(+1:2)x Radial bearing**
  - 8-22x7mm
     - 608-ZZ 
     - 608-2RS
  - 10-19x5mm
     - 6800-ZZ
     - 6800-2RS
  - 12-21x5mm
     - 6801-ZZ
     - 6801-2RS
- **3(+1:2)x Flexible coupling**
  - 5-8mm
  - 5-10mm
  - 5-12mm
- **3(+1:2)x Stainless steel trapezoidal threaded rod**
  - Tr.8x2, single right
  - Tr.10x2, single right
  - Tr.12x3, single right
- **3(+1:2)x Bronze trapezoidal nuts**
  - Hexagonal
     - Tr.8x2, single right
	 - Tr.10x2, single right
	 - Tr.12x3, single right
- **1x DC/Brushless**
- **3(+1:2)x Stepper** [NEMA 14/17 | 0,9-1,8º | 2.8-12V | <1.75A | 3-8mH | >=44Ncm] [60-]
  - NEMA 14
     - [LDO-35STH48-1684A](http://bcndynamics.com/sites/default/files/LDO-35STH48-1684A.pdf) [ 1,8º | 2.8V | 1,68A |2.8mH | >44Ncm | 250g | 48mm]
	     - [[12,95€ bcndynamics](http://bcndynamics.com/es/product/motor-paso-paso-nema14-30cm-cable)]
  - NEMA 17
     - [LDO-42STH47-1684A](http://bcndynamics.com/sites/default/files/LDO-42STH47-1684A%20RevA.pdf) [ 1,8º | 2,8V | 1,68A | 2,8mH | >50Ncm | 350g | 48mm]
	     - [$5.6-10 aliexpress LDO](http://www.alibaba.com/product-detail/Nema-17-cheap-stepper-motor-70_669547573.html?spm=a2700.7724838.30.11.MIQWyN)
		 - 30cm cable wo/ connector [[9,68€ bcndynamics](http://bcndynamics.com/en/product/stepper-motor-nema-17-30cm-cables)]
		 - wo/ cable [[14,00€ bcndynamics](http://bcndynamics.com/en/product/stepper-motor-nema-17-connector)]
		 - w/ 50cm cable [[14,48€ bcndynamics](http://bcndynamics.com/en/product/stepper-motor-nema17-50cm-cables)]
		 - w/ 100cm cable [[14,97€ bcndynamics](http://bcndynamics.com/en/product/stepper-motor-nema17-100cm-cable)]
	 - 17HS4401 [1,8º | 1,7A | 1,5Ohm | 2,8mH | 40Ncm | 280g | 40mm]
	     - 5x 48,24€ [[9,65€ aliexpress](http://es.aliexpress.com/store/product/5pcs-4-lead-Nema17-Stepper-Motor-42-motor-Nema-17-motor-42BYGH-1-7A-17HS4401-motor/1021965_1500927219.html?spm=2114.04010208.3.1.YjrY23&ws_ab_test=searchweb201556_1,searchweb201644_5_505_506_503_504_301_502_10001_10002_10017_10010_10005_10011_10006_10003_10004_10013_10009_10008,searchweb201560_1,searchweb1451318400_-1,searchweb1451318411_6449&btsid=445a56af-d8f4-4e1b-97fa-1f86237d22f4)]
	     - 5x 47,66€ [[9,53€ aliexpress](http://es.aliexpress.com/store/product/5pcs-4-lead-Nema17-Stepper-Motor-42-motor-Nema-17-motor-42BYGH-1-7A-17HS4401-motor/330447_1849871491.html?spm=2114.04010208.3.20.pI9qjz&ws_ab_test=searchweb201556_1,searchweb201644_5_505_506_503_504_301_502_10001_10002_10017_10010_10005_10011_10006_10003_10004_10013_10009_10008,searchweb201560_1,searchweb1451318400_-1,searchweb1451318411_6449&btsid=42e04e7c-023d-43a6-8d77-66d05f340139)]
		 - 3x 28,58€ [[9,53€ aliexpress](		http://es.aliexpress.com/store/product/3pcs-4-lead-Nema17-Stepper-Motor-42-motor-Nema-17-motor-42BYGH-1-7A-17HS4401-motor/817985_32534144790.html?spm=2114.04010208.3.30.pI9qjz&ws_ab_test=searchweb201556_1,searchweb201644_5_505_506_503_504_301_502_10001_10002_10017_10010_10005_10011_10006_10003_10004_10013_10009_10008,searchweb201560_1,searchweb1451318400_-1,searchweb1451318411_6449&btsid=42e04e7c-023d-43a6-8d77-66d05f340139)]
     - 17HS8401	[1,8º | 1.8A | 1,5Ohm | 3,2mH | 52Ncm | 400g | 48mm]
	     - 5x 54,08€ [[10,82€ aliexpress](	http://es.aliexpress.com/store/product/Free-shipping-5-PCS-lot-4-lead-Nema-17-Stepper-Motor-42-motor-17HS8401-1-8A/1201455_32476806811.html?spm=2114.04010208.3.29.NJRrGU&ws_ab_test=searchweb201556_1,searchweb201644_5_505_506_503_504_301_502_10001_10002_10017_10010_10005_10011_10006_10003_10004_10013_10009_10008,searchweb201560_1,searchweb1451318400_-1,searchweb1451318411_6449&btsid=64bc4396-a16a-4da0-97bf-0d3581247967)]
		 - [[12,77€ aliexpress](	http://es.aliexpress.com/store/product/1-PCS-lot-4-lead-Nema-17-Stepper-Motor-42-motor-17HS8401-1-8A-CE-ROSH/822038_1050631173.html?spm=2114.04010208.3.12.NJRrGU&ws_ab_test=searchweb201556_1,searchweb201644_5_505_506_503_504_301_502_10001_10002_10017_10010_10005_10011_10006_10003_10004_10013_10009_10008,searchweb201560_1,searchweb1451318400_-1,searchweb1451318411_6449&btsid=64bc4396-a16a-4da0-97bf-0d3581247967)]
     - 42SHB0602-24 [0,9º | 2.77V | 1.68A | 4.1mH | 44Ncm | 300g | 48mm]
         - 5x 55,35 [[11,07€ aliexpress](http://es.aliexpress.com/store/product/5pcs-lot-CNC-Nema17-0-9-degree-stepper-motor-for-1-68A-4400g-cm-48mm-length/530976_32305940737.html?spm=2114.12010408.0.82.kbBSn8)] + envío

---

- https://www.bcn3dtechnologies.com/es/catalog/mechanics
		 
---

- http://www.baiz.net
- http://www.rosmil.com
- http://tubosmecanicos.es/media/TM_BarraCromada.pdf
- http://www.protubsa.com/wp-content/uploads/P_Protubsa_Cromados_2015.pdf
- http://euroacerossa.com/productos/
- http://www.acerosims.com/files/CatalogoInoxidable8Paginas2015.pdf
		 
# BOM

## Base

| Módulo | Componente | Unidades | Coste/u | Subtotal | Observaciones | URL |
|---|---|---|---|---|---|---|
| Estructura y carros |
| Ejes | Barra<sup>[1](#footnote1)</sup> Ø10mm L370mm | 2 | 0,00 € || X |
       | Barra<sup>[1](#footnote1)</sup> Ø10mm L350mm | 2 | 0,00 € || Y |
       | Barra<sup>[1](#footnote1)</sup> Ø10mm L320mm | 2 | 0,00 € || Z |
       | Rodamiento lineal LM10UU  | 12 | 0,80 € | 9,63 € | 4 por eje | [Aliexpress](http://es.aliexpress.com/af/LM10UU.html?spm=2114.30011108.0.307.aCsbHu&site=esp&SearchText=LM10UU&g=y&CatId=204005035&initiative_id=SB_20160219171834&isAffiliate=y&shipCountry=es)
| Transmisión | Husillo<sup>[2](#myfootnote2)</sup> Tr. 10x2mm L350mm | 1 | 0,00 € || X |
              | Husillo<sup>[2](#myfootnote2)</sup> Tr. 10x2mm L330mm | 1 | 0,00 € || Y |
              | Husillo<sup>[2](#myfootnote2)</sup> Tr. 10x2mm L300mm | 2 | 0,00 € || Z |
              | Tuerca<sup>[3](#myfootnote3)</sup> hexagonal Tr. 10x2mm | 4 | 0,00 € || 1 por husillo |
              | Acoplamiento 5mm x 10mm	| 4 | 1,43 € | 5,70 € | 1 por motor de eje | [Aliexpress](http://es.aliexpress.com/wholesale?shipCountry=ES&shipFromCountry=&shipCompanies=&SearchText=acoplamientos+eje+5+10+mm&exception=&minPrice=&maxPrice=&isFreeShip=y&isFavorite=n&isRtl=n&isOnSale=n&isBigSale=n&similar_style=n&similar_style_id=&isLocalReturn=n&CatId=0&g=y&SortType=price_asc&initiative_id=SB_20160217161948&needQuery=n&groupsort=1)
              | Cojinete 6800ZZ | 4 | 0,60 € | 2,40 € | 1 por husillo, 10 * 19 * 5 mm | [Aliexpress](http://es.aliexpress.com/af/6800ZZ.html?ltype=wholesale&d=y&origin=n&isViewCP=y&catId=0&initiative_id=SB_20160219180320&SearchText=6800ZZ)
| Actuación | NEMA 17 | 4 | 0,00 € || |
| Electrónica | Controlador | 1 | 5,37 € | 5,37 € | Mega 2560 R3 | [Aliexpress](http://es.aliexpress.com/item/MEGA-2560-R3-ATmega2560-R3-AVR-USB-board-for-Arduino-2560-MEGA2560-R3-NO-USB/32222306768.html)
              | Fin de carrera | 3 | 0,00 € |
	      | LCD TFT 3.5 Touch + SD | 1 | 7,98 € | 7,98 € |
              | Ethernet/Wifi/SBC | 0,00 € | |
| Potencia | FA 12V 20-30A | 1 | 0,00 € |
           | Adaptación y distribución | 1 | 12,95 € | 12,95 € | RAMPS 1.4 en kit |
           | Driver PAP | 4 | 0,00 € | 0,00 € | 5x DRV8825 en kit RAMPS |
           | Disipador driver | 4 | 0,00 € | 0,00 € | 5x en kit RAMPS |
| Cableado | Alimentación | 1 | 0,00 € |
           | FA-adaptación | 1 | 0,00 € |
           | LCD-controlador | 1 | 0,00 € |
           | Controlador-potencia | 1 | 0,00 € |

- <a name="footnote1">1</a>: Barra calibrada o rectificada h8-h11 de acero semiduro (F114, AISI 304).
- <a name="footnote2">2</a>: Una entrada a derecha de acero semiduro (F114, AISI 304) con calidad exterior h7-h8.
- <a name="footnote3">3</a>: Una entrada a derecha de bronce 88/12.

## 3D print

| Módulo | Componente | Unidades | Coste/u | Subtotal | Observaciones | URL |
|---|---|---|---|---|---|---|
| Extrusor | Driver PAP (baja) | 1 | 0,00 € | 0,00 € | 1 en kit RAMPS. Por cada extrusor? O se puede usar uno para dos?
           | Disipador driver (baja) | 1 | 0,00 € | 0,00 € | 1 en kit RAMPS |
           | NEMA 14 | 1 | 0,00 € |
| Cama |

## Plotter

| Módulo | Componente | Unidades | Coste/u | Subtotal | Observaciones | URL |
|---|---|---|---|---|---|---|
| Cabezal |
| Base |

## Pluma

## Mill/engraver

| Módulo | Componente | Unidades | Coste/u | Subtotal | Observaciones | URL |
|---|---|---|---|---|---|---|
| Cabezal |
| Base |

## Láser

| Módulo | Componente | Unidades | Coste/u | Subtotal | Observaciones | URL |
|---|---|---|---|---|---|---|
| Cabezal |
| Base |

## Pick-and-Place

| Módulo | Componente | Unidades | Coste/u | Subtotal | Observaciones | URL |
|---|---|---|---|---|---|---|
| Cabezal |
| Base |
