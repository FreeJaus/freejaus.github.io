---
title: 3. Electronics
---

- PCB
  - Layers
- Backlight
  - Addressable LEDs
- Connector
  - USB
  - PS/2
  - Inalámbrico
- Module connection
- Controller
  - Backlight
    - Brightness
	- Effects
  - Media/Fn keys/functions
  - Win key block with fn combination, not switch

---

- [Kalerator](http://kalerator.clueboard.co/), helping you turn [keyboard-layout-editor.com](http://www.keyboard-layout-editor.com/) layouts into PCB's by generating EAGLE scripts.
  - https://github.com/skullydazed/kalerator
  - https://geekhack.org/index.php?topic=74139.0
- [Guide on how to design keyboard PCBs with KiCad](https://github.com/ruiqimao/keyboard-pcb-guide)
- [Keyboard Firmware Builder](http://www.kbfirmware.com/), upload keyboard firmware builder configuration or import from [keyboard-layout-editor.com](http://www.keyboard-layout-editor.com/). Built on top of [QMK](http://qmk.fm/) (see [docs](https://docs.qmk.fm/)), which is based on [TMK](http://github.com/tmk/tmk_keyboard) (see [TMK keyboard firmware](https://geekhack.org/index.php?topic=41989.0)).

---

- Single-switch PCB
  - https://geekhack.org/index.php?topic=55744.msg1254946#msg1254946
  - https://deskthority.net/workshop-f7/another-single-switch-circuit-board-t11420.html

---

- https://kbdfans.myshopify.com/collections/pcb/products/gk64-rgb-60-64keys-hot-swap-pcb
  - One WS8212B, WS2812B-MINI, WS2812D, WS2813B-MINI... per key.

---

SPI TFT/LCD + SD

```
5V     VCC         VCC
MISO   NC/SD_MISO  GND
SCK    CLK/SD_SCK  GND
MOSI   SDA/SD_MOSI NC
LCD_CS CS          NC   SD_CS
SD_CS  NC/SD_CS    NC   SD_MISO
D_C    RS          CLK  SD_SCK
RESET  RST         SDA  SD_MOSI
BL     -           RS
GND    GND         RST
                   CS
```

---

- En cada switch o como distribución uniforme:
  - LED de un solo color.
  - LED RGB no direccionable.
  - LED RGB no direccionable + CI.
  - LED RGB direccionable (CI integrado).

Considerar la potencia necesaria. Si se enciende un led RGB en cada tecla al máximo brillo, ¡el consumo puede ser de hasta 3.8A!
