---
title: 1. Layout
---

El [layout del teclado](https://en.wikipedia.org/wiki/Keyboard_layout) es el número de teclas, el tamaño de cada una de ellas, la disposición de las mismas, la leyenda y/o su funcionalidad. La usabilidad y la experiencia de usuario dependen de un equilibrio entre todas las anteriores, pero condicionan diferentes partes del diseño:

- Layout mecánico: el número de teclas, el tamaño y su posición
  - Dimensiones mínimas `w,h`
	 - PCB
     - Base
  - Offset `x,y` de cada tecla
     - Layout del PCB
     - [Opt] Cortes  en el plate
  - Tamaño `w,h` de cada tecla
	 - Keycaps
- Layout visual: las leyendas
  - Posición `x,y` -en rango (1:4,1:3)- y contenido `'str'` de las leyendas de cada tecla
     - Keycaps
  - Color de la tecla `#000000` y de la leyenda `#000000`
     - Keycaps
- Layout funcional:
  - Funcionalidad normal, +shift, +fn, [opt] +macros de cada tecla
     - Controlador

Tanto los parámetros mecánicos como los visuales pueden representarse en un diseño en 2D y es habitual encontrar imágenes como la siguiente, ISO 105 QWERTY UK:

<center>[![ISO 105 QWERTY UK](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/ISO_keyboard_%28105%29_QWERTY_UK.svg/640px-ISO_keyboard_%28105%29_QWERTY_UK.svg.png)](https://en.wikipedia.org/wiki/File:ISO_keyboard_%28105%29_QWERTY_UK.svg)</center>

El modelo anterior es el clásico en Europa, al que estamos acostumbrados (con diferentes leyendas y funcionalidad). Sin embargo, lo más común en las búsquedas es encontrar modelos ANSI 104, utilizados en Estados Unidos. La diferencia principal entre ambos es que ANSI tiene un shift izquierdo más ancho, mientras que en el ISO hay una tecla adicional a su lado. Al mismo tiempo, la tecla de Enter tiene doble altura en el ISO, aunque esto no supone una diferencia en el número total de teclas. En [ANSI vs ISO](https://deskthority.net/wiki/ANSI_vs_ISO) se muestran gráficamente la diferencias. Una variación de ANSI con nombre propio es la denominada *big-ass enter* que tiene un backspace de una unidad de ancho, para dejar sitio para una tecla de enter de doble altura y 2.25 de anchura.  

# Layout mecánico

Es tradicional la inclusión o exclusión de teclas de *Windows* en la línea inferior, sea en el modelo ANSI o ISO, lo que da como resultado cuatro layouts básicos (sin contar las variantes *big-ass enter*). La amplia mayoría de los teclados comerciales disponibles para escritorio en formato full mantienen alguno de ellos como referencia. Con el abaratamiento de la fabricación de teclados de membrana, y la proliferación de dispositivos multimedia y smartphones, podemos encontrar muchas variaciones especialmente enfocadas a compactar el conjunto. No obstante, cabe subrayar que en el campo de los modelos mecánicos es común mantener tamaños estandar en las teclas, para así aprovechar la disponibilidad de keycaps y estabilizadores. Por ello, los sucesivos pasos que se han dado para compactar cada diseño son más fácilmente trazables.

A la hora de modificar las dimensiones de alguna tecla se debe tener en cuenta que se establece como referencia de las dimensiones una de las teclas de letras, que son normalmente cuadradas, y se dice que su tamaño es 1x1. Las variaciones se definen en multiplos de 0.5 o 0.25 unidades. En lo que respecta al eje vertical, la gran mayoría de teclas en prácticamente todos los layouts tienen una unidad. Las excepciones más habituales son la tecla de *Enter* en los modelos ISO o *big-ass enter*, y las teclas de *Enter* y *+* en el `numpad`, que tienen doble altura. En la anchura hay más variedad, siendo comunes las medidas 1, 1.25, 1.5, 1.75, 2, 2.25 y hasta 2.75. Cuestión aparte son las barras de espacio, que suelen ser de 6.25 unidades, aunque las hay desde 3 hasta 10. En [Space bar dimensions](https://deskthority.net/wiki/Space_bar_dimensions) se puede ver un listado de los diferentes modelos para switches Cherry MX, y en [Space by keyboard](https://deskthority.net/wiki/Space_by_keyboard) las medidas concretas de alrededor de media centena de modelos de varias marcas. Asimismo, en [Keycap size by keyboard](https://deskthority.net/wiki/Keycap_size_by_keyboard) aparecen especificados los tamaños de layouts completos de varios modelos. A la hora de traducir las [unidades](https://deskthority.net/wiki/Unit) a dimensiones físicas, en el caso de Cherry se establece en 0.75 pulgadas (aproximadamente 19mm).

A continuación se enumeran los layouts más comunes, especificando las diferencias con respecto a un diseño full:

*NOTA: a la hora de hacer referencia a las filas, se utiliza la misma numeración que Signature Plastics, de acuerdo con [esta](https://deskthority.net/wiki/Keyboard_profile#Numbering) tabla.*

- Compact (92/93):
  - Se elimina el conjunto de 13 teclas del bloque de navegación.
  - Las teclas eliminadas se superponen funcionalmente en el conjunto de 17 teclas de la derecha (al que se denomina genéricamente `numpad` o `tenkey`).
  - La implementación habitual es que el conjunto resultante actúa como `numpad` cuando `num lock` está activado, y como navegación cuando no.

<center>[![Compact 91/92](/img/fjkb/layouts/compact.png)](http://www.keyboard-layout-editor.com/##@@=Esc&_x:1%3B&=F1&=F2&=F3&=F4&_x:0.5%3B&=F5&=F6&=F7&=F8&_x:0.5%3B&=F9&=F10&=F11&=F12%3B&@_y:0.5%3B&=%C2%AC%0A%60&=!%0A1&=%22%0A2&=%C2%A3%0A3&=$%0A4&=%25%0A5&=^%0A6&=%2F&%0A7&=*%0A8&=%28%0A9&=%29%0A0&=%2F_%0A-&=+%0A%2F=&_w:2%3B&=Backspace&_x:0.5%3B&=Num%20Lock&=%2F%2F%0APrtSc&=*%0AScrLk&=-%0APause%3B&@_w:1.5%3B&=Tab&=Q&=W&=E&=R&=T&=Y&=U&=I&=O&=P&={%0A[&=}%0A]&_x:0.25&w:1.25&h:2&w2:1.5&h2:1&x2:-0.25%3B&=Enter&_x:0.5%3B&=7%0AIns&=8%0AHome&=9%0APgUp&_h:2%3B&=+%3B&@_w:1.75%3B&=Caps%20Lock&=A&=S&=D&=F&=G&=H&=J&=K&=L&=%2F:%0A%2F%3B&=%2F@%0A%27&=~%0A%23&_x:1.75%3B&=4%0ADel&=5%0AEnd&=6%0APgDn%3B&@_w:1.25%3B&=Shift&=|%0A\&=Z&=X&=C&=V&=B&=N&=M&=%3C%0A,&=%3E%0A.&=%3F%0A%2F%2F&_w:2.75%3B&=Shift&_x:0.5%3B&=1&=2%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%E2%86%91&=3&_h:2%3B&=Enter%3B&@_w:1.25%3B&=Ctrl&_w:1.25%3B&=Win&_w:1.25%3B&=Alt&_a:7&w:6.25%3B&=&_a:4&w:1.25%3B&=AltGr&_w:1.25%3B&=Win&_w:1.25%3B&=Menu&_w:1.25%3B&=Ctrl&_x:0.5%3B&=0%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%E2%86%90&=00%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%E2%86%93&=.%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%E2%86%92)</center>

- [Tenkeyless - TKL](https://deskthority.net/wiki/Tenkeyless_keyboard) (87/88):
  - Se elimina el conjunto de 17 teclas de la derecha (`numpad`).
  - No se compensa funcionalmente.
  - Es uno de los diseños con más auge en modelos comerciales para gaming. También es la referencia del [Phantom](https://deskthority.net/wiki/Phantom), que se diseñó como un teclado TKL con cinco posibles layouts (ANSI, ANSIWIN, ISO, ISOWIN, y 7bit), aunque se indica que el diseño del PCB soporta más posibilidades.

<center>[![TKL 87/88](/img/fjkb/layouts/TKL.png)](http://www.keyboard-layout-editor.com/##@@=Esc&_x:1%3B&=F1&=F2&=F3&=F4&_x:0.5%3B&=F5&=F6&=F7&=F8&_x:0.5%3B&=F9&=F10&=F11&=F12&_x:0.25%3B&=PrtSc&=Scroll%20Lock&=Pause%0ABreak%3B&@_y:0.5%3B&=%C2%AC%0A%60&=!%0A1&=%22%0A2&=%C2%A3%0A3&=$%0A4&=%25%0A5&=^%0A6&=%2F&%0A7&=*%0A8&=%28%0A9&=%29%0A0&=%2F_%0A-&=+%0A%2F=&_w:2%3B&=Backspace&_x:0.25%3B&=Insert&=Home&=PgUp%3B&@_w:1.5%3B&=Tab&=Q&=W&=E&=R&=T&=Y&=U&=I&=O&=P&={%0A[&=}%0A]&_x:0.25&w:1.25&h:2&w2:1.5&h2:1&x2:-0.25%3B&=Enter&_x:0.25%3B&=Delete&=End&=PgDn%3B&@_w:1.75%3B&=Caps%20Lock&=A&=S&=D&=F&=G&=H&=J&=K&=L&=%2F:%0A%2F%3B&=%2F@%0A%27&=~%0A%23%3B&@_w:1.25%3B&=Shift&=|%0A\&=Z&=X&=C&=V&=B&=N&=M&=%3C%0A,&=%3E%0A.&=%3F%0A%2F%2F&_w:2.75%3B&=Shift&_x:1.25%3B&=%E2%86%91%3B&@_w:1.25%3B&=Ctrl&_w:1.25%3B&=Win&_w:1.25%3B&=Alt&_a:7&w:6.25%3B&=&_a:4&w:1.25%3B&=AltGr&_w:1.25%3B&=Win&_w:1.25%3B&=Menu&_w:1.25%3B&=Ctrl&_x:0.25%3B&=%E2%86%90&=%E2%86%93&=%E2%86%92)</center>

- [75%](https://deskthority.net/wiki/75%25) (84/85):
  - Se elimina la separación entra la línea de función y el conjunto principal, y también entre los bloques de función.
  - Se elimina el conjunto de 17 teclas de la derecha (`numpad`).
  - El conjunto de 13 teclas de navegación se reduce a 11, y se incluye como una sola columna adicional sin separación con respecto al conjunto principal.
  - Para acomodar las flechas de dirección:
     - Se elimina la tecla de *Menu* situada junto al *Ctrl* derecho.
	 - Se modifica el ancho de la tecla *Win* izquierda de 1.25 a 1.
	 - Se desplazan *Alt* izq. y la barra espaciadora 0.25 a la izquierda.
     - Se modifica el ancho de *Alt Gr* y *Win* dch. de 1.25 a 1.
	 - Se alinea la última fila a la izq.
	 - Se añaden tres teclas de 1 en el hueco creado.
  - [Var.] Alternativamente, se puede reducir la barra de espacio de 6.25 a 5.5, de forma que no es necesario estrechar *Menu*, *Alt* izq,, ni *Win* dch.
  - Funcionalmente, *PrtScr*, *NumLk*, *Pause*, *ScrLk*, *Del* e *Ins*, se mapean en tres teclas.

<center>[![75% 84/85](/img/fjkb/layouts/75percent.png)](http://www.keyboard-layout-editor.com/##@@_a:6%3B&=Esc&=F1&=F2&=F3&=F4&=F5&=F6&=F7&=F8&=F9&=F10&=F11&=F12&_a:4%3B&=PrtSc%0ANmLk&=Pause%0AScrLk&=Del%0AIns%3B&@=%C2%AC%0A%60&=!%0A1&=%22%0A2&=%C2%A3%0A3&=$%0A4&=%25%0A5&=^%0A6&=%2F&%0A7&=*%0A8&=%28%0A9&=%29%0A0&=%2F_%0A-&=+%0A%2F=&_w:2%3B&=Backspace&_a:6%3B&=Home%3B&@_a:4&w:1.5%3B&=Tab&=Q&=W&=E&=R&=T&=Y&=U&=I&=O&=P&={%0A[&=}%0A]&_x:0.25&w:1.25&h:2&w2:1.5&h2:1&x2:-0.25%3B&=Enter&_a:6%3B&=PgUp%3B&@_a:4&w:1.75%3B&=Caps%20Lock&=A&=S&=D&=F&=G&=H&=J&=K&=L&=%2F:%0A%2F%3B&=%2F@%0A%27&=~%0A%23&_x:1.25&a:6%3B&=PgDn%3B&@_w:1.25%3B&=Shift&_a:4%3B&=|%0A\&=Z&=X&=C&=V&=B&=N&=M&=%3C%0A,&=%3E%0A.&=%3F%0A%2F%2F&_a:6&w:1.75%3B&=Shift&_a:7%3B&=%E2%86%91&_a:6%3B&=End%3B&@_w:1.5%3B&=Ctrl&=Win&_w:1.5%3B&=Alt&_a:7&w:5.5%3B&=&_a:6&w:1.25%3B&=AltGr&=Fn&_w:1.25%3B&=Ctrl&_a:7%3B&=%E2%86%90&=%E2%86%93&=%E2%86%92)</center>

- 65%, a medio camino entre 75% y 60%, distribución de cinco filas y una columna adicional a la derecha. Visto en [A 65% Custom](https://geekhack.org/index.php?topic=75079.0).

- [60%](https://deskthority.net/wiki/60%25) (61/62) [hasta 67/68 con variaciones]
  - Se eliminan el conjunto de 13 teclas de navegación.
  - Se elimina el conjunto de 17 teclas de la derecha (`numpad`).
  - Se elimina la línea de función (13 teclas).
  - Funcionalmente,
     - La tecla *Esc* se situa en la línea 1.
	 - Las teclas de función se mapean sobre la línea 1.
	 - Las teclas de navegación se mapean mediante una o más teclas *Fn*.
  - [Var. Esc] +1: se modifica la primera línea para añadir una tecla de *Esc* específica:
     - Se reduce la anchura del *Backspace* de 2 a 1, y se alinea a la derecha.
	 - Se desplaza la primera tecla de la fila al hueco que se ha creado.
	 - Se añade una tecla en la primera posición de la primera fila.
  - [Var. RShift] +1: se modifica la anchura del Shift derecho de 2.75 a 1.75, y se añade una tecla de 1 en el hueco creado. Visto en [KBT Pure](https://deskthority.net/wiki/KBT_Pure).
  - [Var. Dir] +3: se modifican las dos últimas líneas para acomodar flechas de dirección y una tecla *Del*:
     - Penúltima fila
	     - La anchura del *Shift* izquierdo se reduce de 1.25 a 1, y se desplazan todas las teclas restantes de la fila .25 a la izquierda.
	     - Se reduce la anchura del *Shift* derecho de 2.75 a 1.
	     - Se añaden dos teclas de 1 en el hueco de 2 que se ha creado.
	 - Última fila
         - Se modifica la anchura de las cuatro teclas a la derecha de la barra espaciadora de 1.25 a 1. Si se va a reducir la barra espaciadora también (variación siguiente), sólo hay que modificar 3 de las 4.
	     - Se añade una tecla en el hueco creado.
  - [Var. Dir + Fn] [+3]+2: además de la variación anterior, se añaden dos teclas *Fn* adicionales en la última fila:
     - Se modifica la anchura del *Ctrl* izquierdo de 1.25 a 1.75.
	 - Se desplazan las teclas *Win* y *Alt* izquierdas 0.5 a la derecha.
	 - Se modifica el ancho de la barra espaciadora de 6.25 a 3, y se desplaza 1.75 a la derecha.
	 - Se añaden dos teclas de 1.25 en los huecos creado a cada lado de la barra espaciadora. Visto en [Filco Minila](https://deskthority.net/wiki/Filco_Minila).
  - El diseño [HyperMini](https://deskthority.net/group-buys-f50/hypermicro-and-hypermini-keyboard-t4185.html) ilustra múltiples layouts 60% que se soportan por un mismo diseño PCB.

<center>
[![60% 61/62](/img/fjkb/layouts/60percent.png)](http://www.keyboard-layout-editor.com/##@@=%C2%AC%0A%60&=!%0A1&=%22%0A2&=%C2%A3%0A3&=$%0A4&=%25%0A5&=^%0A6&=%2F&%0A7&=*%0A8&=%28%0A9&=%29%0A0&=%2F_%0A-&=+%0A%2F=&_w:2%3B&=Backspace%3B&@_w:1.5%3B&=Tab&=Q&=W&=E&=R&=T&=Y&=U&=I&=O&=P&={%0A[&=}%0A]&_x:0.25&w:1.25&h:2&w2:1.5&h2:1&x2:-0.25%3B&=Enter%3B&@_w:1.75%3B&=Caps%20Lock&=A&=S&=D&=F&=G&=H&=J&=K&=L&=%2F:%0A%2F%3B&=%2F@%0A%27&=~%0A%23%3B&@_w:1.25%3B&=Shift&=|%0A\&=Z&=X&=C&=V&=B&=N&=M&=%3C%0A,&=%3E%0A.&=%3F%0A%2F%2F&_w:2.75%3B&=Shift%3B&@_w:1.25%3B&=Ctrl&_w:1.25%3B&=Win&_w:1.25%3B&=Alt&_a:7&w:6.25%3B&=&_a:4&w:1.25%3B&=AltGr&_w:1.25%3B&=Win&_w:1.25%3B&=Menu&_w:1.25%3B&=Ctrl)

[![60% 67/68](/img/fjkb/layouts/60percentvar.png)](http://www.keyboard-layout-editor.com/##@@=Esc&=!%0A1&=%22%0A2&=%C2%A3%0A3&=$%0A4&=%25%0A5&=^%0A6&=%2F&%0A7&=*%0A8&=%28%0A9&=%29%0A0&=%2F_%0A-&=+%0A%2F=&=%C2%AC%0A%60&_a:7%3B&=%E2%86%90%3B&@_a:4&w:1.5%3B&=Tab&=Q&=W&=E&=R&=T&=Y&=U&=I&=O&=P&={%0A[&=}%0A]&_x:0.25&w:1.25&h:2&w2:1.5&h2:1&x2:-0.25%3B&=Enter%3B&@_w:1.75%3B&=Caps%20Lock&=A&=S&=D&=F&=G&=H&=J&=K&=L&=%2F:%0A%2F%3B&=%2F@%0A%27&=~%0A%23%3B&@=Shift&=|%0A\&=Z&=X&=C&=V&=B&=N&=M&=%3C%0A,&=%3E%0A.&=%3F%0A%2F%2F&=Shift&_a:7%3B&=%E2%86%91&_a:4%3B&=Del%3B&@_w:1.75%3B&=Ctrl&_w:1.25%3B&=Win&_w:1.25%3B&=Alt&_w:1.25%3B&=Fn&_a:7&w:3%3B&=&_a:4&w:1.25%3B&=Fn&_w:1.25%3B&=AltGr&=Win&_a:7%3B&=%E2%86%90&=%E2%86%93&=%E2%86%92)
</center>

*NOTA: Las imágenes mostradas en todos los diseños anteriores representan las variantes ISO UK. La conversión a ANSI en la mayoría de ellos se limita a las diferencias ya indicadas. En los modelos más compactos indicados a continuación, menos habituales y mucho más específicos, no hay diferencias mecánicas, sólo visuales y funcionales.*

- [40%](https://deskthority.net/wiki/40%25) se utiliza para hacer referencia a layouts que carecen incluso de la línea 1. La mayoría de variaciones siguen la línea que se ve en los diseño 75% y 60%, y afectan principalmente a la última fila y a las teclas de edición/sistema. Una variación notablemente diferente es el diseño *Planck* (47) que se caracteriza por ser ortolinear.

<center>
[![40%](/img/fjkb/layouts/40percent.png)](http://www.keyboard-layout-editor.com/##@@=Esc&=Q&=W&=E&=R&=T&=Y&=U&=I&=O&=P&=Back%3Cbr%3ESpace%3B&@_w:1.25%3B&=Tab&=A&=S&=D&=F&=G&=H&=J&=K&=L&_w:1.75%3B&=Enter%3B&@_w:1.75%3B&=Shift&=Z&=X&=C&=V&=B&=N&=M&=%3C%0A.&_w:1.25%3B&=Shift&=Fn%3B&@_w:1.25%3B&=Hyper&=Super&=Meta&_a:7&w:6.25%3B&=&_a:4&w:1.25%3B&=Meta&_w:1.25%3B&=Super)

[![40%](/img/fjkb/layouts/40planck.png)](http://www.keyboard-layout-editor.com/##@@_a:7%3B&=Tab&=Q&=W&=E&=R&=T&=Y&=U&=I&=O&=P&=Back%20Space%3B&@=Esc&=A&=S&=D&=F&=G&=H&=J&=K&=L&=%2F%3B&=%27%3B&@=Shift&=Z&=X&=C&=V&=B&=N&=M&=,&=.&=%2F%2F&=Return%3B&@=&=Ctrl&=Alt&=Super&=%2F&dArr%2F%3B&_w:2%3B&=&=%2F&uArr%2F%3B&=%2F&larr%2F%3B&=%2F&darr%2F%3B&=%2F&uarr%2F%3B&=%2F&rarr%2F)
</center>

- Diseños ergonómicos. La característica principal de estos es que están pensados para reducir el esfuerzo en las muñecas y los dedos, por lo que visualmente es evidente la posición de las manos. A veces están compuestos por dos mitades simétricas, mientras que otros diseños guardan más parecido con los modelos estandar. Algunos ejemplos representativos de esta familia son [ErgoDox](http://www.keyboard-layout-editor.com/##@@_x:3.5%3B&=%23%0A3&_x:10.5%3B&=*%0A8%3B&@_y:-0.875&x:2.5%3B&=%2F@%0A2&_x:1%3B&=$%0A4&_x:8.5%3B&=%2F&%0A7&_x:1%3B&=%28%0A9%3B&@_y:-0.875&x:5.5%3B&=%25%0A5&_a:7%3B&=&_x:4.5%3B&=&_a:4%3B&=^%0A6%3B&@_y:-0.875&a:7&w:1.5%3B&=&_a:4%3B&=!%0A1&_x:14.5%3B&=%29%0A0&_a:7&w:1.5%3B&=%3B&@_y:-0.375&x:3.5&a:4%3B&=E&_x:10.5%3B&=I%3B&@_y:-0.875&x:2.5%3B&=W&_x:1%3B&=R&_x:8.5%3B&=U&_x:1%3B&=O%3B&@_y:-0.875&x:5.5%3B&=T&_a:7&h:1.5%3B&=&_x:4.5&h:1.5%3B&=&_a:4%3B&=Y%3B&@_y:-0.875&a:7&w:1.5%3B&=&_a:4%3B&=Q&_x:14.5%3B&=P&_a:7&w:1.5%3B&=%3B&@_y:-0.375&x:3.5&a:4%3B&=D&_x:10.5%3B&=K%3B&@_y:-0.875&x:2.5%3B&=S&_x:1%3B&=F&_x:8.5%3B&=J&_x:1%3B&=L%3B&@_y:-0.875&x:5.5%3B&=G&_x:6.5%3B&=H%3B&@_y:-0.875&a:7&w:1.5%3B&=&_a:4%3B&=A&_x:14.5%3B&=%2F:%0A%2F%3B&_a:7&w:1.5%3B&=%3B&@_y:-0.625&x:6.5&h:1.5%3B&=&_x:4.5&h:1.5%3B&=%3B&@_y:-0.75&x:3.5&a:4%3B&=C&_x:10.5%3B&=%3C%0A,%3B&@_y:-0.875&x:2.5%3B&=X&_x:1%3B&=V&_x:8.5%3B&=M&_x:1%3B&=%3E%0A.%3B&@_y:-0.875&x:5.5%3B&=B&_x:6.5%3B&=N%3B&@_y:-0.875&a:7&w:1.5%3B&=&_a:4%3B&=Z&_x:14.5%3B&=%3F%0A%2F%2F&_a:7&w:1.5%3B&=%3B&@_y:-0.375&x:3.5%3B&=&_x:10.5%3B&=%3B&@_y:-0.875&x:2.5%3B&=&_x:1%3B&=&_x:8.5%3B&=&_x:1%3B&=%3B&@_y:-0.75&x:0.5%3B&=&=&_x:14.5%3B&=&=%3B&@_r:30&rx:6.5&ry:4.25&y:-1&x:1%3B&=&=%3B&@_h:2%3B&=&_h:2%3B&=&=%3B&@_x:2%3B&=%3B&@_r:-30&rx:13&y:-1&x:-3%3B&=&=%3B&@_x:-3%3B&=&_h:2%3B&=&_h:2%3B&=%3B&@_x:-3%3B&=), [Atreus](http://www.keyboard-layout-editor.com/##@@_r:10&rx:1&y:-0.09999999999999998&x:2%3B&=E%3B&@_y:-0.65&x:1%3B&=W&_x:1%3B&=R%3B&@_y:-0.75%3B&=Q%3B&@_y:-0.9&x:4%3B&=T%3B&@_y:-0.7000000000000001&x:2%3B&=D%3B&@_y:-0.6499999999999999&x:1%3B&=S&_x:1%3B&=F%3B&@_y:-0.75%3B&=A%3B&@_y:-0.8999999999999999&x:4%3B&=G%3B&@_y:-0.7000000000000002&x:2%3B&=C%3B&@_y:-0.6499999999999999&x:1%3B&=X&_x:1%3B&=V%3B&@_y:-0.75%3B&=Z%3B&@_y:-0.8999999999999999&x:4%3B&=B%3B&@_y:-0.75&x:5&h:1.5%3B&=Ctrl%3B&@_y:-0.9500000000000002&x:2%3B&=super%3B&@_y:-0.6499999999999999&x:1%3B&=Tab&_x:1%3B&=Shift%3B&@_y:-0.75%3B&=Esc%3B&@_y:-0.8999999999999999&x:4%3B&=Bksp%3B&@_r:-10&rx:7&ry:0.965&y:-0.20000000000000018&x:2%3B&=I%3B&@_y:-0.6499999999999999&x:1%3B&=U&_x:1%3B&=O%3B&@_y:-0.75&x:4%3B&=P%3B&@_y:-0.8999999999999999%3B&=Y%3B&@_y:-0.7000000000000002&x:2%3B&=K%3B&@_y:-0.6499999999999999&x:1%3B&=J&_x:1%3B&=L%3B&@_y:-0.75&x:4%3B&=%2F:%0A%2F%3B%3B&@_y:-0.8999999999999999%3B&=H%3B&@_y:-0.7000000000000002&x:2%3B&=%3C%0A,%3B&@_y:-0.6499999999999999&x:1%3B&=M&_x:1%3B&=%3E%0A.%3B&@_y:-0.7500000000000004&x:4%3B&=%3F%0A%2F%2F%3B&@_y:-0.9000000000000004%3B&=N%3B&@_y:-0.7499999999999996&x:-1&h:1.5%3B&=Alt%3B&@_y:-0.9499999999999997&x:2%3B&=%2F_%0A-%3B&@_y:-0.6500000000000004&x:1%3B&=fn&_x:1%3B&=%22%0A%27%3B&@_y:-0.75&x:4%3B&=Enter%3B&@_y:-0.9000000000000004%3B&=Space), [Kinesis Advantage](http://www.keyboard-layout-editor.com/##@@_f:1&f2:2&w:0.675&h:0.85%3B&=%0AEsc&_x:0.07499999999999996&w:0.675&h:0.85%3B&=%0AF1&_x:0.07499999999999996&w:0.675&h:0.85%3B&=%0AF2&_x:0.07500000000000018&w:0.675&h:0.85%3B&=%0AF3&_x:0.07500000000000018&w:0.675&h:0.85%3B&=%0AF4&_x:0.07500000000000018&w:0.675&h:0.85%3B&=%0AF5&_x:0.07500000000000018&w:0.675&h:0.85%3B&=%0AF6&_x:0.07500000000000018&w:0.675&h:0.85%3B&=%0AF7&_x:0.07500000000000018&w:0.675&h:0.85%3B&=%0AF8&_x:4.825&w:0.675&h:0.85%3B&=Repeat%20Rate%0AF9&_x:0.07499999999999929&w:0.675&h:0.85%3B&=Disable%20Macro%0AF10&_x:0.07499999999999929&w:0.675&h:0.85%3B&=Macro%0AF11&_x:0.07499999999999929&w:0.675&h:0.85%3B&=Remap%0AF12&_x:0.07499999999999929&w:0.675&h:0.85%3B&=PrintScr%20SysReq&_x:0.07499999999999929&w:0.675&h:0.85%3B&=Scroll%3Cbr%3Elock&_x:0.07499999999999929&w:0.675&h:0.85%3B&=Pause%20Break&_x:0.07499999999999929&w:0.675&h:0.85%3B&=Keypad&_x:0.07499999999999929&w:0.675&h:0.85%3B&=Progrm%3B&@_x:2.25&f:3%3B&=%2F@%0A2&=%23%0A3&=$%0A4&=%25%0A5&_x:5.5%3B&=^%0A6&=%2F&%0A7%0A%0A%0ANm%20Lk&=*%0A8%0A%0A%0A%2F=&=%28%0A9%0A%0A%0A%2F=%3B&@_y:-0.75&w:1.25%3B&=+%0A%2F=&=!%0A1&_x:13.5%3B&=%29%0A0%0A%0A%0A*&_w:1.25%3B&=%2F_%0A-%3B&@_y:-0.25&x:2.25&f:6%3B&=W&=E&=R&=T&_x:5.5%3B&=Y&=U%0A%0A%0A%0A7&=I%0A%0A%0A%0A8&=O%0A%0A%0A%0A9%3B&@_y:-0.75&a:6&f:3&w:1.25%3B&=Tab&_a:4&f:6%3B&=Q&_x:13.5%3B&=P%0A%0A%0A%0A-&_f:3&w:1.25%3B&=|%0A\%3B&@_y:-0.25&x:2.25&f:6%3B&=S&=D&=F&=G&_x:5.5%3B&=H&=J%0A%0A%0A%0A4&=K%0A%0A%0A%0A5&=L%0A%0A%0A%0A6%3B&@_y:-0.75&a:6&f:3&w:1.25%3B&=Caps%3Cbr%3ELock&_a:4&f:6%3B&=A&_x:13.5&f:3%3B&=%2F:%0A%2F%3B%0A%0A%0A+&_w:1.25%3B&=%22%0A%27%3B&@_y:-0.25&x:2.25&f:6%3B&=X&=C&=V&=B&_x:5.5%3B&=N&=M%0A%0A%0A%0A1&_f:3%3B&=%3C%0A,%0A%0A%0A2&=%3E%0A.%0A%0A%0A3%3B&@_y:-0.75&a:6&w:1.25%3B&=Shift&_a:4&f:6%3B&=Z&_x:13.5&f:3%3B&=%3F%0A%2F%2F%0A%0A%0AEnter&_a:6&w:1.25%3B&=Shift%3B&@_y:-0.25&x:2.25&a:4%3B&=|%0A\%0A%0A%0AInsert&_a:5&f:5%3B&=%E2%87%A6%0A%0A%0A%0A%E2%87%A6&=%E2%87%A8%0A%0A%0A%0A%E2%87%A8&_x:7.5%3B&=%E2%87%A7%0A%0A%0A%0A%E2%87%A7&=%E2%87%A9%0A%0A%0A%0A%E2%87%A9&_a:4&f:3%3B&={%0A[%0A%0A%0A.%3B&@_y:-0.75&x:1.25%3B&=~%0A%60&_x:13.5%3B&=}%0A]%0A%0A%0AEnter%3B&@_r:15&rx:5.25&ry:4&x:1.5%3B&=Ctrl&=Alt%3B&@_x:0.5&a:7&h:2%3B&=Back%3Cbr%3ESpace&_h:2%3B&=Delete&=Home%3B&@_x:2.5%3B&=End%3B&@_r:-15&rx:12.75&x:-3.5&a:4%3B&=Cmd%0A%0A%0A%0A%0A%0AWin&_a:7%3B&=Ctrl%3B&@_x:-3.5&a:6%3B&=Page%3Cbr%3EUp&_a:7&h:2%3B&=Enter&_h:2%3B&=Space%3B&@_x:-3.5&a:6%3B&=Page%3Cbr%3EDown), [Programmer's Keyboard](http://www.keyboard-layout-editor.com/#/samples/pkb.json), o [ergo pro](http://matias.ca/ergopro/pc/).
- 20%: existe una relativamente amplia variedad de periféricos (generalmente para gaming) denominados `keypad`, p.e. [Introducing the GH36 Programmable Matrix Keypad](https://geekhack.org/index.php?topic=61306.0), que podrían incluirse en esta categoría. Sin embargo, dichos periféricos normalmente no son suficiente para utilizar el equipo, y se requiere un teclado adicional. El concepto 20%, [OneHand](https://deskthority.net/workshop-f7/onehand-20-keyboard-t6617.html) o [Half Keyboard](http://www.matias.ca/halfkeyboard/) va más allá, rizando el rizo para proveer funcionalidad completa mediante macros. El diseño es parecido a una mitad de un teclado ergonómico. De hecho, pueden unirse dos 20% para teclear con ambas manos. A la inversa, algunos fabricantes ofrecen soporte funcional para utilizar un teclado con layout clásico sólo con una mano, como por ejemplo [half-qwerty keyboard](http://half-qwerty.com/). Más info en [onehandedkeyboard.com](http://www.onehandedkeyboard.com/).
- Tal como se comenta en la siguiente sección, el desplazamiento horizontal relativo entre filas es una herencia de las máquinas de escribir. Existen variantes con disposición ortolinear, más allá del Planck, como puede verse por ejemplo en [ortholinearkeyboards.com](http://ortholinearkeyboards.com/).

Para ver ejemplos comerciales de los layouts anteriores, en [reddit.com/r/MechanicalKeyboards/wiki/tenkeyless_keyboards](https://www.reddit.com/r/MechanicalKeyboards/wiki/tenkeyless_keyboards) se puede consultar un listado bastante extenso. Se utiliza una nomenclatura ligeramente diferente: "*for the purposes of this Guide 65% is 60%+Arrow keys. 70% is 60%+Fcn keys. 80% is Tenkeyless. 90% (TK) is 60%+Fcn/Numpad*".

Tratándose de diseños personalizados, naturalmente pueden añadirse teclas adicionales, ya sea para funciones multimedia o para macros (como se ve en modelos comerciales de alta gama de marcas conocidas). También pueden añadirse ruedas, trackballs, touchpads... La mayoría de estas adiciones son redundantes, y se incluyen para facilitar explícitamente la introducción de algunas órdenes. Por ello, en esta guía no se consideran parte del layout mecánico, sino módulos opcionales que se analizarán en la sección dedicada al diseño de la base.

# Layout visual

Si bien el layout mecánico está ligado con el idioma en el que trabaje el usuario (motivación principal de la existencia de *Alt Gr* en los diseños ISO), las diferencias más notables se aprecian en el layout visual. En [este](https://deskthority.net/wiki/Region-specific_layouts) artículo se enuncian las particularidades de diferentes regiones. El [layout habitual en europa](https://es.wikipedia.org/wiki/Teclado_QWERTY#/media/File:Latin_keyboard_layouts_by_country_in_Europe_map.PNG) es el QWERTY, siendo la diferencia principal la colocación de los símbolos en la fila 1 y en el resto de teclas adyacentes a las letras. Sin embargo, en algunos países como en Alemania, las letras Y y Z están intercambiadas, un layout denominado QWERTZ. En Francia, se utiliza AZERTY. Pese a las diferencias, todos los anteriores son esencialmente la misma distribución, por lo que se suele emplear el QWERTY de forma genérica.

Curiosamente el layout QWERTY se creo cuando las máquinas de escribir entraron en el mercado de masas, antes del siglo XX. La motivación principal para su diseño fue evitar la pulsación rápida de teclas adyacentes, ya que debido al funcionamiento de las máquinas, éstas eran propensas a atascarse. De hecho, el hecho de que las filas no estén alineadas es también una herencia de las máquinas de escribir. El `numpad`, más moderno, es ortolinear. En cualquier caso, las máquinas mejoraron, y los elementos mecánicos se redujeron a switches, pero el layout se ha mantenido.

Por lo anterior, se han propuesto multitud de layouts visuales diferentes, entre los que los más conocidos son los de tipo Dvorak o Colemak. A la hora de diseñarlos se tienen en cuenta factores como la alternancia entre manos, el uso de la fila principal, el recorrido de cada dedo, si los movimientos son hacia dentro o hacia fuera, las características del lenguaje en que se va a escribir... Algunos layouts propuestos priorizan, por ejemplo, las combinaciones de teclas antes que los recorridos largos con un dedo. Estas consideraciones pueden requerir la disposición particulr de teclas adicionales. Por ello, la exploración de nuevos layouts visuales está estrechamente relacionada con la ergonomía y es común encontrarlos en modelos como el ErgoDox. No obstante, algunos de los modelos Custom referenciados en la sección de modelos comerciales incluyen switches para cambiar a alguno de los layouts alternativos más extendidos. Adicionalmente, mediante software y/o con firmware personalizado se puede probar cualquiera en un teclado con un layout mecánico común. Tanto en la wiki de [DESKthority](https://deskthority.net/wiki/Keyboard_layouts) como en la [Wikipedia](https://en.wikipedia.org/wiki/Keyboard_layout) se puede obtener más información sobre layouts por regiones y alternativos. Existen incluso [generadores](https://deskthority.net/wiki/Keyboard_layouts#Custom_layout-generators) para crear layouts visuales optimizados a partir de los parámetros y preferencias que establezca el usuario.

# Layout funcional

La función principal del layout funcional es traducir las pulsaciones de una o varias teclas en las órdenes enviadas al equipo. En caso de disponer de layout visual, el aspecto funcional principal que la orden enviada al equipo se corresponda con la leyenda. También deberán interpretarse los locks y teclas de systema y función en los modelos más reducidos, donde no existe tecla específica. Adicionalmente, deben procesarse las órdenes que no se han representado en el layout visual por limitaciones de espacio o de fabricación del keycap, pero que son necesarias para el uso habitual. Por último, puede añadirse órdenes multimedia o la ejecución de macros mediante teclas usadas como modificadores.

Cuando la leyenda no representa todas las funcionalidades de una tecla, o cuando se usan modificadores que alteran la función de todas las teclas (este es el caso de los layouts con menor número de teclas -20%, 40%, 60%...-), es habitual representar visualmente el layout funcional en grupos de imagenes denominadas capas (en inglés, *layer*). [Aqui](http://www.creativephotoeffects.com/pje/KeyCodes.png) puede verse un ejemplo para un diseño 20%.

# GUIs para el diseño mecánico y visual

Puesto que un teclado estandar tiene más de cien teclas, resulta muy tedioso definir manualmente las características de cada una de ellas para definir el layout del teclado deseado. Por suerte, en [keyboard-layout-editor.com](http://www.keyboard-layout-editor.com/#/) se provee una interfaz gráfica (sobre tecnologías web) para facilitar la tarea. De hecho, haciendo click sobre cualquiera de las imágenes mostradas en la lista del apartado sobre el layout mecánico, se puede acceder a la misma para analizar el layout en detalle (y modificarlo si se quiere). Además del tamaño y posición/rotación del número de teclas que se quiera, permite personalizar el color y las leyendas. Permite exportar el diseño en varios formatos de imagen, y facilita también un listado del número de teclas ordenadas por tamaño y color. Adicionalmente, permite guardar la configuración en un fichero de texto (denominado formato RAW), y también en formato JSON, para procesarla posteriormente. Aunque la licencia no es libre aún, es un proyecto gratuito y open source.

Por lo tanto, revisando la lista de requisitos indicada al principio de este bloque, un fichero RAW o JSON generado con el keyboard-layout-editor es suficiente para continuar con la fabricación, ya que reúne toda la información necesaria. El tiempo requerido para escoger un layout de entre las muchas opciones disponibles es harina de otro costal :D.

Algunos fabricantes como [WASD keyboards](http://www.wasdkeyboards.com/index.php/wasd-v2-87-key-custom-mechanical-keyboard.html) ofrecen editores para kits de keycaps personalizados, pero ninguno tan completo como el anterior.

---

- Valoraciones personales:
  - Hago un uso intensivo del `numpad`, por lo que el teclado de trabajo principal debe incluir una cuadricula cartesiana de al menos 9x9. El diseño compact es una buena base.
  - La separación de las teclas de función no es necesaria, por lo que es interesante 'pegar' la fila de función a la fila 1, como en 75%.
  - Disponer de teclas de función permite mapear en las mismas hasta 12*(4+n) funciones, pero también son 12 switches requeridos. ¿Merece la pena mantenerlas? A priori resulta difícil encajar *Esc*, *PrtSc* y *Pause*, pero puede ser interesante tratar de ajustar un 60% con un `numpad` (y llamarlo 70%¿?).
  - Entre el TKL y el 75%, el primero lo único que aporta es más separación. Estaría bien probar si cuesta situar las teclas de enter y edición. Si pueden encontrarse fácilmente a ciegas -posiblemente con *homing*-, puede ser una buena base tanto para gaming como para un uso portable/multimedia.

```
[{c:"#ff0000",a:7,w:1.25,n:true},"\n\n\n\nesc",{c:"#000000",t:"#ffffff",a:0},"\n\n\n|\n1\n!","\n\n\n@\n2\n\"","\n\n\n#\n3\n·","\n\n\n~\n4\n$",{c:"#404040",n:true},"\n\n\n€\n5\n%",{c:"#000000"},"\n\n\n¬\n6\n&",{a:3},"\n\n\n\n7\n/","\n\n\n\n8\n(","\n\n\n\n9\n)",{c:"#404040",n:true},"\n\n\n\n0\n=",{c:"#000000"},"\n\n\n\n'\n?","\n\n\n\n¡\n¿",{c:"#0000ff",a:7,w:1.25},"\n\n\n\nbackSpace",{x:0.25,c:"#000000",a:5},"\nprtSc\n\n\n/","\nscrLk\n\n\n*","\npause\n\n\n-"],
[{c:"#0000ff",t:"#000000",a:7,w:1.25},"\n\n\n\ntab",{c:"#cccccc"},"\n\n\n\nQ","\n\n\n\nW","\n\n\n\nE","\n\n\n\nR","\n\n\n\nT","\n\n\n\nY","\n\n\n\nU","\n\n\n\nI","\n\n\n\nO","\n\n\n\nP",{c:"#000000",t:"#ffffff",a:4},"^\n`\n\n[","*\n+\n\n]",{c:"#000080",a:7,w:1.25,h:2},"\n\n\n\nenter",{x:0.25,c:"#cccccc",t:"#000000",a:5},"\nins\n\n\n7","\nhome\n\n\n8","\npgUp\n\n\n9"],
[{c:"#404040",t:"#ffffff",a:7,w:1.25},"\n\n\n\ncapsLk",{c:"#cccccc",t:"#000000"},"\n\n\n\nA","\n\n\n\nS","\n\n\n\nD",{n:true},"\n\n\n\nF","\n\n\n\nG","\n\n\n\nH",{n:true},"\n\n\n\nJ","\n\n\n\nK","\n\n\n\nL","\n\n\n\nÑ",{c:"#000000",t:"#ffffff",a:4},"¨\n´\n\n{","Ç\nç\n\n}",{x:1.5,c:"#cccccc",t:"#000000",a:5},"\ndel\n\n\n4","\nend\n\n\n5","\nPgDn\n\n\n6"],
[{c:"#0000ff",a:7,w:1.25},"\n\n\n\nshift",{c:"#000000",t:"#ffffff",a:4},">\n<",{c:"#cccccc",t:"#000000",a:7},"\n\n\n\nZ","\n\n\n\nX","\n\n\n\nC","\n\n\n\nV","\n\n\n\nB","\n\n\n\nN","\n\n\n\nM",{c:"#000000",t:"#ffffff",a:4},";\n,",":\n.","_\n-",{c:"#404040"},"ª\nº\n\n\\",{c:"#0000ff",t:"#000000",a:7,w:1.25},"\n\n\n\nshift",{x:0.25,c:"#cccccc"},"\n\n\n\n1",{c:"#000080",t:"#ffffff",a:5},"\n↑\n\n\n2",{c:"#cccccc",t:"#000000",a:7},"\n\n\n\n3"],
[{c:"#0000ff",w:1.25},"\n\n\n\nctrl",{c:"#008000",t:"#ffffff"},"\n\n\n\nsuper",{c:"#000000"},"",{c:"#0000ff",t:"#000000",w:1.25},"\n\n\n\nalt",{c:"#000080",w:4.5},"",{c:"#0000ff",w:1.25},"\n\n\n\naltGr",{c:"#008000",n:true},"\n\n\n\nfn",{c:"#000000",t:"#ffffff"},"\n\n\n\nmenu",{c:"#008000"},"\n\n\n\nnumLk",{c:"#0000ff",t:"#000000",w:1.25},"\n\n\n\nctrl",{x:0.25,c:"#000080",t:"#ffffff",a:5},"\n←\n\n\n0","\n↓\n\n\n00",{a:4},".\n\n\n\n\n\n\n\n\n\n→"]
```
