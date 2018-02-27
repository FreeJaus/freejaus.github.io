---
title: "umc"
---

Puestos a realizar un desembolso de 80-150€ en un teclado, las características que debería reunir reunir son:

- Fabricación
  - Plate-mounted: switches montados sobre placa de aluminio/acero (no pcb-mounted)
  - Bare plate: sin embellecedor sobre la placa de aluminio (para que no se acumule suciedad)
  - Grip pads and stand-offs with rubber feet
  - Huecos en la parte inferior para redirigir los cables
  - Cable USB extraible (no microUSB)
  - [Opt] Reposamuñecas
  - Retroiluminación RGB direccionable por tecla
- Switches
  - Cherry MX (por compatibilidad de las keycaps)
  - [Opt] O-Ring
- Distribución
  - ISO 65 + Numpad 15
  - [Opt] Macro Keys 15-20
- Teclas
  - Doble juego: topprint y frontprint (compatibles con backlight)
- Programación
  - Driverless (bare-metal, mediante firmware)
  - Función/multimedia/layers
  - Bloqueo de la tecla 'Windows' mediante tecla de función, no con un interruptor específico
  - Retroiluminación
     - Brillo configurable
     - Modos:
       - Iluminar caps lk, num lk y scroll lk.
       - Gaming.
       - Dual arcade.
       - Flechas de dirección en la parte 65.
- Extras
  - [Opt] USB Hub (e.g. for smart-card reader)
  - [Opt] Audio
  - [Opt] (touch) LCD/TFT SPI + SD Card
  - [Opt] Joystick
  - [Opt] Rotary Encoder
  - [Opt] NRF24L01 breakout
  - [Opt] External SPI/UART to manage desk lights/devices (i.e., to communicate with another uC).

- Layout mecánico:
  - Criterio:
    - Hago un uso intensivo del `numpad`, por lo que el teclado de trabajo principal debe incluir una cuadricula cartesiana de al menos 9x9. El diseño compact es una buena base.
    - La separación de las teclas de función no es necesaria, por lo que es interesante 'pegar' la fila de función a la fila 1, como en 75%.
    - Disponer de teclas de función permite mapear en las mismas hasta 12*(4+n) funciones, pero también son 12 switches requeridos. ¿Merece la pena mantenerlas? A priori resulta difícil encajar *Esc*, *PrtSc* y *Pause*, pero puede ser interesante tratar de ajustar un 60% con un `numpad` (y llamarlo 70%¿?).
    - Entre el TKL y el 75%, el primero lo único que aporta es más separación. Estaría bien probar si cuesta situar las teclas de enter y edición. Si pueden encontrarse fácilmente a ciegas -posiblemente con *homing*-, puede ser una buena base tanto para gaming como para un uso portable/multimedia.
  - Proceso de 'compresión':
    - [fjkb-101](http://www.keyboard-layout-editor.com/##@@_c=#ff0000&a:7;&=&_c=#000000&t=#ffffff;&=%0A%0A%0A%0AF1&=%0A%0A%0A%0AF2&=%0A%0A%0A%0AF3&=%0A%0A%0A%0AF4&_c=#222222&n:true;&=%0A%0A%0A%0AF5&_c=#000000;&=%0A%0A%0A%0AF6&=%0A%0A%0A%0AF7&=%0A%0A%0A%0AF8&=%0A%0A%0A%0AF9&_c=#222222&n:true;&=%0A%0A%0A%0AF10&_c=#000000;&=%0A%0A%0A%0AF11&=%0A%0A%0A%0AF12&_c=#222222;&=%0A%0A%0A%0APause&_c=#ff0000&a:3;&=%0A%0A%0A%0ADel%0AIns&_x:0.15&c=#222222&a:7;&=%0A%0A%0A%0AHome&=%0A%0A%0A%0AEnd&=%0A%0A%0A%0APgUp&=%0A%0A%0A%0APgDn;&@_a:3;&=%0A%0A%0A%0A%C2%BA%0A%5C%0A%0A%0A%0A%0A%0A%C2%AA&_c=#74096f;&=%0A%0A%0A%0A!%0A%7C&=%0A%0A%0A%0A%22%0A/@&=%0A%0A%0A%0A%C2%B7%0A#&=%0A%0A%0A%0A$%0A~&=%0A%0A%0A%0A%25%0A%E2%82%AC&=%0A%0A%0A%0A/&%0A%C2%AC&=%0A%0A%0A%0A//&=%0A%0A%0A%0A(&=%0A%0A%0A%0A)&=%0A%0A%0A%0A/=&_c=#222222;&=%0A%0A%0A%0A'%0A?&=%0A%0A%0A%0A%C2%A1%0A%C2%BF&_c=#ff0000&a:7&w:2;&=&_x:0.15&c=#000000;&=LED&=%0A%0A%0A%0A//&=%0A%0A%0A%0A*&_a:3;&=%0A%0A%0A%0APrt%0ASys;&@_c=#e2591f&a:7&w:1.5;&=&_c=#000000;&=%0A%0A%0A%0AQ&=%0A%0A%0A%0AW&=%0A%0A%0A%0AE&=%0A%0A%0A%0AR&=%0A%0A%0A%0AT&=%0A%0A%0A%0AY&=%0A%0A%0A%0AU&=%0A%0A%0A%0AI&=%0A%0A%0A%0AO&=%0A%0A%0A%0AP&_c=#222222&a:3;&=%0A%0A%0A%0A%60%0A%5B%0A%0A%0A%0A%0A%0A%5E&=%0A%0A%0A%0A*%0A%5D%0A%0A%0A%0A%0A%0A+&_x:0.25&c=#74096f&a:7&w:1.25&h:2&w2:1.5&h2:1&x2:-0.25;&=&_x:0.15&c=#000000&a:5;&=Ins%0A%0A%0A%0A7&=Home%0A%0A%0A%0A8&=PgUp%0A%0A%0A%0A9&_a:7;&=%0A%0A%0A%0A-;&@_c=#e2591f&w:1.75;&=LED&_c=#000000;&=%0A%0A%0A%0AA&=%0A%0A%0A%0AS&=%0A%0A%0A%0AD&_c=#222222&n:true;&=%0A%0A%0A%0AF&_c=#000000;&=%0A%0A%0A%0AG&=%0A%0A%0A%0AH&_c=#222222&n:true;&=%0A%0A%0A%0AJ&_c=#000000;&=%0A%0A%0A%0AK&=%0A%0A%0A%0AL&=%0A%0A%0A%0A%C3%91&_c=#222222&a:3;&=%0A%0A%0A%0A%C2%B4%0A%7B%0A%0A%0A%0A%0A%0A%C2%A8&=%0A%0A%0A%0A%0A%7D%0A%0A%0A%0A%0A%0A%C3%87&_x:1.4&c=#000000&a:5;&=Del%0A%0A%0A%0A4&=End%0A%0A%0A%0A5&=PgDn%0A%0A%0A%0A6&_a:7;&=%0A%0A%0A%0A+;&@_c=#e2591f&w:1.25;&=&_c=#222222&a:3;&=%0A%0A%0A%0A%3E%0A%3C&_c=#000000&a:7;&=%0A%0A%0A%0AZ&=%0A%0A%0A%0AX&=%0A%0A%0A%0AC&=%0A%0A%0A%0AV&=%0A%0A%0A%0AB&=%0A%0A%0A%0AN&=%0A%0A%0A%0AM&_c=#222222&a:3;&=%0A%0A%0A%0A,%0A/;&=%0A%0A%0A%0A.%0A/:&=%0A%0A%0A%0A-%0A/_&_c=#4a9d0b&t=#000000&a:7;&=&_c=#e2591f&t=#ffffff&w:1.75;&=&_x:0.15&c=#000000;&=%0A%0A%0A%0A1&_c=#222222;&=%E2%86%91%0A%0A%0A%0A2&_c=#000000&a:5;&=Menu%0A%0A%0A%0A3&_c=#74096f&a:7&h:2;&=;&@_c=#e2591f&t=#000000&w:1.25;&=&_c=#4a9d0b&t=#ffffff&w:1.25;&=&_c=#e2591f&t=#000000&w:1.25;&=&_c=#74096f&t=#ffffff&w:6.25;&=&_c=#e2591f&t=#000000&w:1.25;&=&_c=#4a9d0b&t=#ffffff&w:1.25;&=&_c=#222222&w:1.25;&=LED%0A%0A%0A%0AMenu&_c=#e2591f&t=#000000&w:1.25;&=&_x:0.15&c=#222222&t=#ffffff;&=%E2%86%90%0A%0A%0A%0A0&=%E2%86%93%0A%0A%0A%0A00&=%E2%86%92%0A%0A%0A%0A.)

    - [fjkb-85](http://www.keyboard-layout-editor.com/##@@_c=#ff0000&a:7;&=&_c=#74096f&t=#ffffff&a:3;&=%0A%0A%0A%0A!%0A%7C%0A%0A%0A%0A%0A%0A1&=%0A%0A%0A%0A%22%0A/@%0A%0A%0A%0A%0A%0A2&=%0A%0A%0A%0A%C2%B7%0A#%0A%0A%0A%0A%0A%0A3&=%0A%0A%0A%0A$%0A~%0A%0A%0A%0A%0A%0A4&=%0A%0A%0A%0A%25%0A%E2%82%AC%0A%0A%0A%0A%0A%0A5&=%0A%0A%0A%0A/&%0A%C2%AC%0A%0A%0A%0A%0A%0A6&=%0A%0A%0A%0A//%0A%0A%0A%0A%0A%0A%0A7&=%0A%0A%0A%0A(%0A%0A%0A%0A%0A%0A%0A8&=%0A%0A%0A%0A)%0A%0A%0A%0A%0A%0A%0A9&=%0A%0A%0A%0A/=%0A%0A%0A%0A%0A%0A%0A0&_c=#222222;&=%0A%0A%0A%0A'%0A?&=%0A%0A%0A%0A%C2%A1%0A%C2%BF&_c=#ff0000&a:7&w:2;&=&_x:0.15&c=#000000;&=LED&=%0A%0A%0A%0A//&=%0A%0A%0A%0A*&_a:3;&=%0A%0A%0A%0APrt%0ASys;&@_c=#e2591f&a:7&w:1.5;&=&_c=#000000;&=%0A%0A%0A%0AQ&=%0A%0A%0A%0AW&=%0A%0A%0A%0AE&=%0A%0A%0A%0AR&=%0A%0A%0A%0AT&=%0A%0A%0A%0AY&=%0A%0A%0A%0AU&=%0A%0A%0A%0AI&=%0A%0A%0A%0AO&=%0A%0A%0A%0AP&_c=#222222&a:3;&=%0A%0A%0A%0A%60%0A%5B%0A%0A%0A%0A%0A%0A%5E&=%0A%0A%0A%0A*%0A%5D%0A%0A%0A%0A%0A%0A+&_x:0.25&c=#74096f&a:7&w:1.25&h:2&w2:1.5&h2:1&x2:-0.25;&=&_x:0.15&c=#000000&a:5;&=Ins%0A%0A%0A%0A7&=Home%0A%0A%0A%0A8&=PgUp%0A%0A%0A%0A9&_a:7;&=%0A%0A%0A%0A-;&@_c=#e2591f&w:1.75;&=LED&_c=#000000;&=%0A%0A%0A%0AA&=%0A%0A%0A%0AS&=%0A%0A%0A%0AD&_c=#222222&n:true;&=%0A%0A%0A%0AF&_c=#000000;&=%0A%0A%0A%0AG&=%0A%0A%0A%0AH&_c=#222222&n:true;&=%0A%0A%0A%0AJ&_c=#000000;&=%0A%0A%0A%0AK&=%0A%0A%0A%0AL&=%0A%0A%0A%0A%C3%91&_c=#222222&a:3;&=%0A%0A%0A%0A%C2%B4%0A%7B%0A%0A%0A%0A%0A%0A%C2%A8&=%0A%0A%0A%0A%0A%7D%0A%0A%0A%0A%0A%0A%C3%87&_x:1.4&c=#000000&a:5;&=Del%0A%0A%0A%0A4&=End%0A%0A%0A%0A5&=PgDn%0A%0A%0A%0A6&_a:7;&=%0A%0A%0A%0A+;&@_c=#e2591f&w:1.25;&=&_c=#222222&a:3;&=%0A%0A%0A%0A%3E%0A%3C&_c=#000000&a:7;&=%0A%0A%0A%0AZ&=%0A%0A%0A%0AX&=%0A%0A%0A%0AC&=%0A%0A%0A%0AV&=%0A%0A%0A%0AB&=%0A%0A%0A%0AN&=%0A%0A%0A%0AM&_c=#222222&a:3;&=%0A%0A%0A%0A,%0A/;&=%0A%0A%0A%0A.%0A/:&=%0A%0A%0A%0A-%0A/_&=%0A%0A%0A%0A%C2%BA%0A%5C%0A%0A%0A%0A%0A%0A%C2%AA&_c=#e2591f&a:7&w:1.75;&=&_x:0.15&c=#000000;&=%0A%0A%0A%0A1&_c=#222222;&=%E2%86%91%0A%0A%0A%0A2&_c=#000000&a:5;&=Menu%0A%0A%0A%0A3&_c=#74096f&a:7&h:2;&=;&@_c=#e2591f&t=#000000&w:1.5;&=&_c=#4a9d0b&t=#ffffff&w:1.25;&=&_c=#e2591f&t=#000000&w:1.25;&=&_c=#1b2cc2&w:1.25;&=&_c=#74096f&t=#ffffff&w:3;&=&_c=#1b2cc2&t=#000000&w:1.25;&=&_c=#e2591f&w:1.25;&=&_c=#4a9d0b&t=#ffffff;&=&_c=#0b2b9d&t=#000000;&=%0A%0A%0A%0APause&_c=#222222&t=#ffffff;&=LED%0A%0A%0A%0AMenu&_c=#e2591f&t=#000000&w:1.25;&=&_x:0.15&c=#222222&t=#ffffff;&=%E2%86%90%0A%0A%0A%0A0&=%E2%86%93%0A%0A%0A%0A00&=%E2%86%92%0A%0A%0A%0A.)

    - [fjkb-80](http://www.keyboard-layout-editor.com/##@@_c=#d31929&a:7&w:1.25&n:true;&=%0A%0A%0A%0Aesc&_c=#2d3238&t=#ffffff&a:0;&=%0A%0A%0A%7C%0A1%0A!&=%0A%0A%0A/@%0A2%0A%22&=%0A%0A%0A#%0A3%0A%C2%B7&=%0A%0A%0A~%0A4%0A$&_c=#525554&n:true;&=%0A%0A%0A%E2%82%AC%0A5%0A%25&_c=#2d3238;&=%0A%0A%0A%C2%AC%0A6%0A/&&_a:3;&=%0A%0A%0A%0A7%0A//&=%0A%0A%0A%0A8%0A(&=%0A%0A%0A%0A9%0A)&_c=#525554&n:true;&=%0A%0A%0A%0A0%0A/=&_c=#2d3238;&=%0A%0A%0A%0A'%0A?&=%0A%0A%0A%0A%C2%A1%0A%C2%BF&_c=#0078a3&a:7&w:1.25;&=%0A%0A%0A%0AbackSpace&_x:0.25&c=#2d3238&a:5;&=%0AprtSc%0A%0A%0A//&=%0AscrLk%0A%0A%0A*&=%0Apause%0A%0A%0A-;&@_c=#0078a3&t=#000000&a:7&w:1.25;&=%0A%0A%0A%0Atab&_c=#d9dae0;&=%0A%0A%0A%0AQ&=%0A%0A%0A%0AW&=%0A%0A%0A%0AE&=%0A%0A%0A%0AR&=%0A%0A%0A%0AT&=%0A%0A%0A%0AY&=%0A%0A%0A%0AU&=%0A%0A%0A%0AI&=%0A%0A%0A%0AO&=%0A%0A%0A%0AP&_c=#2d3238&t=#ffffff&a:0;&=%0A%0A%0A%5B%0A%60%0A%5E&=%0A%0A%0A%5D%0A+%0A*&_c=#95bfe8&a:7&w:1.25&h:2;&=%0A%0A%0A%0Aenter&_x:0.25&c=#d9dae0&t=#000000&a:5;&=%0Ains%0A%0A%0A7&=%0Ahome%0A%0A%0A8&=%0ApgUp%0A%0A%0A9;&@_c=#00a477&t=#ffffff&a:7&w:1.25;&=%0A%0A%0A%0AcapsLk&_c=#d9dae0&t=#000000;&=%0A%0A%0A%0AA&=%0A%0A%0A%0AS&=%0A%0A%0A%0AD&_n:true;&=%0A%0A%0A%0AF&=%0A%0A%0A%0AG&=%0A%0A%0A%0AH&_n:true;&=%0A%0A%0A%0AJ&=%0A%0A%0A%0AK&=%0A%0A%0A%0AL&=%0A%0A%0A%0A%C3%91&_c=#2d3238&t=#ffffff&a:0;&=%0A%0A%0A%7B%0A%C2%B4%0A%C2%A8&=%0A%0A%0A%7D%0A%C3%A7%0A%C3%87&_x:1.5&c=#d9dae0&t=#000000&a:5;&=%0Adel%0A%0A%0A4&=%0Aend%0A%0A%0A5&=%0APgDn%0A%0A%0A6;&@_c=#0078a3&a:7&w:1.25;&=%0A%0A%0A%0Ashift&_c=#2d3238&t=#ffffff&a:3;&=%0A%0A%0A%0A%3C%0A%3E&_c=#d9dae0&t=#000000&a:7;&=%0A%0A%0A%0AZ&=%0A%0A%0A%0AX&=%0A%0A%0A%0AC&=%0A%0A%0A%0AV&=%0A%0A%0A%0AB&=%0A%0A%0A%0AN&=%0A%0A%0A%0AM&_c=#2d3238&t=#ffffff&a:3;&=%0A%0A%0A%0A,%0A/;&=%0A%0A%0A%0A.%0A/:&=%0A%0A%0A%0A-%0A/_&_c=#525554&a:0;&=%0A%0A%0A%5C%0A%C2%BA%0A%C2%AA&_c=#0078a3&t=#000000&a:7&w:1.25;&=%0A%0A%0A%0Ashift&_x:0.25&c=#d9dae0;&=%0A%0A%0A%0A1&_c=#95bfe8&t=#ffffff&a:5;&=%0A%E2%86%91%0A%0A%0A2&_c=#d9dae0&t=#000000&a:7;&=%0A%0A%0A%0A3;&@_c=#0078a3&w:1.25;&=%0A%0A%0A%0Actrl&_c=#00a477&t=#ffffff;&=%0A%0A%0A%0Asuper&_c=#2d3238;&=&_c=#0078a3&t=#000000&w:1.25;&=%0A%0A%0A%0Aalt&_c=#95bfe8&w:4.5;&=&_c=#0078a3&w:1.25;&=%0A%0A%0A%0AaltGr&_c=#00a477&n:true;&=%0A%0A%0A%0Afn&_c=#2d3238&t=#ffffff;&=%0A%0A%0A%0Amenu&_c=#00a477;&=%0A%0A%0A%0AnumLk&_c=#0078a3&t=#000000&w:1.25;&=%0A%0A%0A%0Actrl&_x:0.25&c=#95bfe8&t=#ffffff&a:5;&=%0A%E2%86%90%0A%0A%0A0&=%0A%E2%86%93%0A%0A%0A00&_a:4;&=.%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%E2%86%92)
