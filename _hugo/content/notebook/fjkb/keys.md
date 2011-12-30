---
categories: [ nb-fjkb ]

title: 2. Keys
keywords:

publishdate: 2016-01-01
date: 2015-11-20
---

De la definición del layout se extrae un listado con el número de teclas de cada tipo (dimensiones y color), y la leyenda correspondiente a cada una de ellas. En la imagen siguiente se muestran los componentes principales que intervienen en el montaje de una tecla. Aunque no se refleja en la figura, cabe puntualizar que, en el caso de la barra de espacio y otras teclas con dimensiones igual o mayores que 2 unidades, es posible que se requiera la instalación de [estabilizadores](https://deskthority.net/wiki/Stabiliser). Por otro lado, las partes indicadas como *PCB*, *mounting plate*, *upper shell* y *lower shell* forman parte de la base y del diseño electrónico, por lo que se analizarán en el bloque correspondiente. En este bloque se analizan las partes restantes (switches, keycaps y tipo de montaje), para extraer los requisitos que condicionan las anteriores. Concretamente, se requiere:

- Si el montaje es tipo plate, layout de cada switch para el plate, y, si es necesario, del soporte (estabilizador).
- Layout de cada switch para el PCB.
- Perfil de cada tecla.
- Estabilizadores necesarios.

<center>
<a href="https://deskthority.net/wiki/Key"><img src="https://deskthority.net/w/images/thumb/9/96/Keyswitch_illustration.svg/823px-Keyswitch_illustration.svg.png" height="350"></a>
</center>

# Switches

La parte más importante de una tecla, especialmente en el caso de los teclados mecánicos, es el accionamiento de tipo pulsador denominado *switch*. Del diseño de éste depende la respuesta del teclado en lo que respecta al recorrido de la pulsación, presión necesaria para la activación, punto de activación en el recorrido, percepción de la activación... Tradicionalmente se han utilizado múltiples características físicas para el [mecanismo de accionamiento](https://deskthority.net/wiki/Contact_mechanism): acústica, capacidad, efecto Hall, inducción, contacto... Los más extendidos en el diseño de teclados de uso general y en portátiles son los de [membrana con conos de goma](https://deskthority.net/wiki/Rubber_dome_over_membrane). La característica principal de los teclados mecánicos es que se sustituyen las membranas por un PCB (típicamente de fibra de vidrio), a los que se sueldan (micro)switches individuales. De la [extensa lista](https://www.reddit.com/r/MechanicalKeyboards/wiki/switch_guides#wiki_general_switch_guides) de switches que se han fabricado y se fabrican actualmente, a continuación se presentan las tres familias con más presencia:

## Common types

### Cherry MX

Los más utilizados son los [Cherry MX](https://deskthority.net/wiki/Cherry_MX), diseñados por la empresa alemana [Cherry Corporation](https://deskthority.net/wiki/Cherry) desde 1983, y basados en el contacto entre dos láminas metálicas, tal como se muestra en la siguiente animación:

<center><a href="http://www.pictureshack.us/images/44932_Cherry_MX_Blue.gif"><img alt="Cherry MX Blue w/ LED" src="http://www.pictureshack.us/images/44932_Cherry_MX_Blue.gif" height="275"/></a> <img src="https://deskthority.net/w/images/3/38/CherryMXForceTravel.png" height="275"></center>

En el catálogo de Cherry existen varios modelos MX diferenciados por colores, en función de la fuerza necesaria para su desplazamiento a lo largo de todo el recorrido, hasta tocar el fondo (denominado *bottoming out*). La gráfica de la derecha muestra las curvas de los modelos más utilizados (black, red, blue, brown y white), y en [este](http://www.keyboardco.com/blog/index.php/2012/12/an-introduction-to-cherry-mx-mechanical-switches/) artículo se describen las diferencias. Adicionalmente, con el propósito de [silenciar parcialmente](https://deskthority.net/wiki/Damping) el teclado, se comercializan gomas denominadas *O-ring* y pequeños pads de gomaespuma

Debido a que Cherry no previó la apuesta de las marcas de gaming por modelos mecánicos, y puesto que la patente expiró hace una década, a los largo de los últimos años ha habido problemas para satisfacer la demanda. Eso y el precio de los mismos (que se analizará más adelante) ha propiciado la comercialización de diseños que son prácticamente copias de los Cherry MX. Este es el caso de [Kailh](http://www.kailh.com/), fabricante chino de switches de todo tipo que provee a marcas como Razer o Steelseries. En [Kailh switch guide - from clones to custom designs](http://imgur.com/a/7ujle) hay detalles sobre la evolución de este fabricante en el mercado. [Gateron](https://deskthority.net/wiki/Category:Gateron_switches) es otro fabricante de clones de Cherry MX, con [mejores críticas](https://www.reddit.com/r/MechanicalKeyboards/comments/37lpci/gateron_switches/) que Kailh en cuanto a durabilidad. Mientras las especificaciones y colores de los modelos de Kailh coinciden con las de los Cherry MX, los modelos de Gateran tienen diferentes características (más suaves).

### Alps SKBL/SKBM

Aunque el formato de Cherry es el líder indiscutible del mercado, los switches fabricados por la compañia japonesa [Alps Electric](https://deskthority.net/wiki/Alps_Electric), fundada en 1948, son mención obligada. Alps ya no los fabrica, pero de la [amplia variedad](https://deskthority.net/wiki/Category:Alps_switches) de switches que han fabricado, los [SCKL/SKCM](https://deskthority.net/wiki/Alps_SKCL/SKCM_series), introducidos en 1983, fueron los más comunes en teclados de ordenador, y son muy preciados entre los entusiastas. Sin embargo, el número de piezas que componían cada uno era elevado (10-11), en comparación, p.e., con las 5-6 de que se [componen](http://www.cherry.de/cid/MX_Technology.htm?#/modul-specification/mx-blue-level) los Cherry MX. A partir de 1996, de la mano de la taiwanesa [Forward Electronics](https://deskthority.net/wiki/Forward_Electronics), se empezó a comercializar el modelo [SKBL/SKBM](https://deskthority.net/wiki/Alps_SKBL/SKBM_series), denominado *simplified Alps*. Hoy en día se siguen comercializando [clones](https://deskthority.net/wiki/Alps_clone) de este último diseño (modelos compatibles) no fabricados por Alps, tal como se indica en este [listado](https://deskthority.net/wiki/Category:Clones_of_Alps_SKCL/SKCM_switches). De entre ellos, los fabricados por [Matias Corporation](https://deskthority.net/wiki/Matias_Corporation), empresa sita en Canada, están teniendo un auge muy notable. Matias afrontó el diseño de [los mismos](https://deskthority.net/wiki/Matias_switch), que duró dos años, al saber que Forward Electronics dejaría de producirlos. Al igual que en los Cherry MX, se ofrecen varios modelos, pero la oferta es más reducida: [click](http://matias.ca/switches/click/) (clon de SKBM White), [quiet click](http://matias.ca/switches/quiet/) (clon de SKBM Black), y [linear](http://matias.ca/switches/linear/).

<center>
<img src="http://matias.ca/switches/quiet/viewer/2.jpg" width="225">
<img src="http://matias.ca/switches/quiet/viewer/3.jpg" width="225">
<img src="http://matias.ca/switches/quiet/viewer/4.jpg" width="225">
</center>

Una de las novedades entre 2014 y 2015 fue la proliferación de modelos con LEDs RGB para crear efectos visuales en el teclado. Al margen de preferencias estéticas, lo cierto es que la retroiluminación del teclado es una característica muy demandada desde hace años, tanto para lanparties como por quienes trabajan por la noche. Los switches Matias están fabricados en plástico traslúcido para aprovechar al máximo los LEDs (RGB o de un solo color). Es cierto que después Cherry empezó a comercializar también modelos traslúcidos (RGB),  como subrayan en la página de Matias. Otra diferencia reseñable es que lo switches matias quiet incluyen [silenciadores](https://deskthority.net/wiki/Damping) en el diseño, por lo que no es necesario adquirilos por separado.

<center>
<img src="http://matias.ca/switches/quiet/viewer/1.jpg" width="225">
<img src="http://matias.ca/switches/quiet/viewer/5.jpg" width="225">
</center>

### Topre

Por otro lado, la japonesa [Topre Corporation](https://deskthority.net/wiki/Topre_Corporation), fabricante de teclados desde 1983, comercializa [switches capacitivos](https://deskthority.net/wiki/Topre_switch):

<center>
<img src="https://elitekeyboards.com/proddata/images/topre3d_405.png" height="250">
</center>

## Backlight

Si bien un teclado puede disponer de retroiluminación independientemente del switch utilizado, algunos modelos son más adecuados para ello. Particularmente, los modelos MX incluyen, en el diseño de la carcasa de cada switch, un hueco para colocarlos, tal como se ve en la animación mostrada anteriormente. En el caso de los [switches Matias](https://deskthority.net/wiki/Matias_switch), sin embargo, la carcasa no incluye ningún soporte. Puesto que es transparente/traslúcido, están pensados para que el LED pueda colocarse en cualquier posición debajo del propio switch. En el layout combinado mostrado más adelante, puede apreciarse que el LED está situado en la parte inferior, para ambos diseños.

No obstante, tal como se analiza en la sección correspondiente a las keycaps, el efecto de la retroiluminación es simbólico si no se dispone de leyendas traslúcidas. En caso de querer una iluminación de fondo por motivos puramente estéticos, puede reducirse significativamente el número de LEDs utilizado (reduciendo así el consumo también). Asimismo, si se utilizan leyendas frontprint y switches no traslúcidos, debe tenerse en cuenta la posición en la que montar el switch. Los switches pueden colocarse en varias posiciones, sin que afecte a su uso, pero el layout del PCB tiene que ser coherente.

## Elección de la familia de switches

Existen [diagramas](http://www.keyboardco.com/blog/index.php/2013/01/which-switch/) y [guias](http://i.imgur.com/cZkte.png), para orientar a quienes nunca han dispuesto de un modelo mecánico, en función del uso que se le va a dar, teniendo en cuenta aspecto básicos y generales. Sin embargo, tratándose de algo tan particular, es muy posible que las orientaciones generales no coincidan con el tacto que uno espera de un teclado mecánico. En el caso de Cherry MX, algunas tiendan comercializan kits de prueba con modelos de varios colores, e incluso de varios fabricantes. MAXkeyboard, por ejemplo tiene tres kits de tamaños diferentes. El más grande, que incluye modelos de Cherry y de Gateron, se muestra en la figura siguiente (imagen de la izquierda). En el caso de Matias o Topre, todavía no se comercializan kits similares.

<center><a href="http://www.maxkeyboard.com/max-keycap-cherry-mx-switch-gateron-switch-o-ring-ultimate-sampler-tester-kit.html"><img src="http://d2fu7qgd3tdbcc.cloudfront.net/images/detailed/2/Max_Ultimate_Sampler_kit_4.jpg?t=1452475788" height="300"></a>
<img src="https://geekhack.org/index.php?action=dlattach;topic=60268.0;attach=69978;image" height="250"></center>

La elección del *el mejor switch*, y la modificación de los mismos para personalizar el tacto, es un tema de discusión constante en foros y grupos de opinión. Es, con diferencia, el aspecto sobre el que más información se encuentra. Sin embargo, la preferencia por una de las familias anteriores, y por un modelo en concreto, es personal es intransferible. Asumiendo una calidad de fabricación equivalente, ninguna de las familias es mejor per se. Y sólo la prueba durante varios días de un teclado completo permite percibir realmente el tacto del switch.

En lo que respecta a la compatibilidad, los modelos de cada familia pueden ser intercambiados sin modificaciones en el diseño mecánico del teclado. Por ejemplo, se pueden sustituir los MX Green de un teclado por unos Gateron KS Blue. Sin embargo, no es así entre familias. En principio, los layout del PCB son diferentes y las keycaps para MX no son compatibles con los swtiches Alps o Topre. Sin embargo, tratándose de un mercado en plena efervescencia, debido a que prácticamente la totalidad de keycaps custom que se ofertan son compatibles con MX, se están dando pasos importantes en este sentido:

- El [CM Novatouch TKL](http://us.coolermaster.com/product/Detail/gaming/novatouch/novatouch.html) es un teclado con switches Topre compatibles con keycaps MX. Inicialmente un trabajor de CoolerMaster planteó la idea en [DESKthority](https://deskthority.net/keyboards-f2/topre-switch-cherry-mx-compatible-t7076.html).
- Tanto en [DESKthority](https://deskthority.net/workshop-f7/cherry-to-alps-adapters-t4934.html) como en [GeekHack](https://geekhack.org/index.php?topic=69031.0) se han propuesto diseños de adaptadores para utilizar keycaps MX sobre switches Alps. La pega principal es que las keycaps de MX están pensadas para introducirse parcialmente en el cuerpo del switch cuando son pulsadas, y los switches Alps no. Por ello, es inevitable que la altura de las teclas se incremente parcialmente al usar los adaptadores. Como resultado, en principio hay que adaptar todas las teclas al mismo tiempo, o utilizar adaptadores sólo en teclas de función o edición. Asimismo, la adaptación de estabilizadores no está resuelta por completo, y por el momento no hay soluciones documentadas para los de tipo Costar (wire).
- Edgar Matias, uno de los fundadores de Matias Corporation, es investigador en el área de las interfaces de entrada, con una presencia notable en las comunidades de entusiastas. Un ejemplo de ello es el [pedido de grupo de un 60%](http://matias.ca/60/pc/) que está organizando. El diseño es compatible tanto con switches MX como Matias Alps (a excepción de la última fila). Esta compatibilidad se refleja en el diseño del PCB (en la figura superior, imagen de la derecha). Y también en el diseño del plate, especialmente en lo que respecta a los estabilizadores, tal como muestran las imágenes en [este](https://geekhack.org/index.php?topic=60268.0) hilo.

## Mount type

La a hora de [montar](https://deskthority.net/wiki/Switch_mount) los switches en el teclado hay dos soluciones comunes. Cuando se sueldan al PCB únicamente, se dice que son *PCB-mounted*. En los teclados actuales es más común que los switches sean fijados a una placa (metálica o de plástico), que es parte de la base y está situada a una distancia concreta del PCB. Así, se dice que son *plate-mounted*. Como es evidente, la solución *plate-mounted* ofrece mayor rigidez y protege el PCB, pero también añade peso al diseño. Al mismo tiempo, puesto que el PCB es más flexible que el plate, amortigua parcialmente el ruido cuando se hace *bottom out*, y tiene un tacto más suave.

Por último el montaje en plate puede limitar el acceso a los switches MX. El plate del [Phantom](https://deskthority.net/wiki/Phantom), por ejemplo, está especialmente diseñado para permitir desmontar la parte superior de los switches sin necesidad de desoldarlo, pero no todos los diseños lo están. Esto no es un problema en los Alps, porque pueden ser abiertos en cualquier caso.

# Keycaps

## Profiles

Las dimensiones de las bases de las tapas vienen determinadas por la separación entre teclas, siendo muy ligeramente más pequeñas, para que haya pequeños huecos entre las mismas. Sin embargo, existe cierta variedad en lo que respecta a la altura de las mismas y a la forma de la cara superior. El conjunto de características que determina la posición final de la caras superiores de las teclas se denomina [profile](https://deskthority.net/wiki/Keyboard_profile). Está estrechamente relacionado con la forma de las propias teclas, y también con la forma y posición de la base. En la imagen siguiente se muestran las formas que puede tomar la base. Entre ellas, las denominadas *Flat* y *Chiclet* son las más comunes en teclados de portátil. En teclados mecánicos la base suele ser plana, pero suele estar inclinada, por lo que se utilizan perfiles contorneados o de tipo escalera. En el perfil en escalera todas las teclas tienen el mismo perfil angulado, de forma que las superficies quedan todas en paralelo con la mesa. Más habituales son los perfiles contorneados, que implican diferentes diseños para las teclas, en función de su ubicación en el teclado (la fila en la que estén).

<center>
<a href="http://www.keycapsdirect.com/key-caps.php">
<table>
<tr>
<th rowspan="5"><a href="https://deskthority.net/wiki/Keyboard_profile"><img src="https://deskthority.net/w/images/thumb/5/5b/KeyProfile.gif/344px-KeyProfile.gif"></a>
</th>
<th rowspan="5" width="10"></th>
<th>LP</th><th><img src="http://www.keycapsdirect.com/images/key-caps/angle1.jpg"></th>
</tr>
<tr>
<th>DCS</th><th><img src="http://www.keycapsdirect.com/images/key-caps/angle3.jpg"></th>
</tr>
<tr>
<th>DSA</th><th><img src="http://www.keycapsdirect.com/images/key-caps/angle2.jpg"></th></tr>
<tr>
<th>SA</th><th><img src="http://www.keycapsdirect.com/images/key-caps/angle5.jpg"></th></tr>
<tr>
<th>KT</th><th><img src="http://www.keycapsdirect.com/images/key-caps/angle7.jpg"></th></tr>
</table></a>
</span>
</center>

No todos los fabricantes utilizan la misma terminología, por lo que es recomendable revisar la documentación para identificar cada tecla. En lo que respecta a la identificación de las filas, en [esta](https://deskthority.net/wiki/Keyboard_profile#Numbering) tabla se resumen las numeraciones utilizadas por varios fabricantes. En la parte derecha de la figura anterior se muestran las cinco *familias* definidas por [Signature Plastics](http://www.keycapsdirect.com/): DCS, DSA, SA, LP, y KT, donde se muestra una silueta por cada una de las 4-6 filas. El término *profile* se utiliza para definir la altura media de todas las teclas. *Sculptured*, por otro lado, hace referencia a si todas tienen el mismo diseño. De las cinco familias, DSA, LP y KT son *non-sculptured*. DSA (altura media) y LP (altura baja) son adecuadas para bases *Flat*, mientras que KT tiene una inclinación constante, tipo *Staircase* (altura alta). Por su parte, DCS (altura media) y SA (altura alta) se corresponden con perfiles contorneados. Un último aspecto que afecta a la forma de las keycaps es el forma de la parte superior. La mayoría de teclados hoy en día tienen forma [cilíndrica](http://i.imgur.com/XdKTDPz.jpg), pero tradicionalmente también se han utilizado con forma [esférica](http://i.imgur.com/tpBdn2E.jpg) e incluso [circular](https://upload.wikimedia.org/wikipedia/commons/8/8e/Norskdata-terminal.JPG). En el caso de las familias mencionadas, DSA y SA tienen forma esférica, mientras que DCS, LP y KT son cilíndricas. El perfil DCS de Signature Plastics es muy parecido a lo que se denomina *Standard profile* u *OEM profile*, que se utiliza para keysets con diferentes tipos de montaje, incluyendo los MX y Alps SKCL/SKCM. 

Como se ha comentado anteriormente, no todas las keycaps son compatibles entre sí. Por norma general, las keycaps de Alps sólo se pueden montar en switches Alps, mientras que las keycaps tipo MX pueden montarse en las tres familias de switches (con o sin adaptadores). Puesto que hay familias con diferentes alturas, en caso de necesitar adaptadores puede ser interesante adquirir algún set de perfil bajo, para evitar que se *inclinen* las piezas. En cualquier caso, los fabricantes especializados en keycaps suelen disponer de varios tipos de montaje, como puede verse [aquí](http://pimpmykeyboard.com/template/images/MountStyles.pdf) para las familias mencionadas.

## Materials and construction

Además del diseño y la rareza de las piezas, el precio está principalmente condicionado por el proceso de [fabricación](https://deskthority.net/wiki/Keycap_construction) y los materiales utilizados. El material más extendido es el ABS, aunque los estusiastas prefieren el PBT porque es más duro y tarda más en amarillear y en mostrar brillos por el desgaste en la superficie. Otro materiales utilizados, aunque más raros, son el aluminio y las resinas (especialmente en fabricaciones caseras). En cuanto al proceso en sí, las de mayor calidad se fabrican mediante moldeo por [inyección en dos pasos](https://deskthority.net/wiki/Double-shot_molding). En primer lugar se moldea la leyenda, y en segundo lugar se moldea el resto del keycap alrededor de la primera pieza. De esta forma, la leyenda nunca se borrará, ya que no está gravada o pegada, sino que es parte de la pieza. Este tipo de fabricación permite fabricar [keycaps con ventana](http://i.imgur.com/DTGxp.jpg), tal como se ve en [esta](https://deskthority.net/w/images/2/27/Cherry_G80-3700HAU_--_double-shot_windowed_keycap.jpg) imagen. Asimismo, es la técnica más adecuada para permitir la retroiluminación de las leyendas. Sin embargo, la fabricación en dos pasos requiere disponer de moldes para todas las piezas de la familia y también para todas las leyendas. Los moldes suelen realizarse sobre metal mediante fresado y/o torneado (CNC si se automatiza), lo que encarece significativamente el coste inicial. Por este motivo, existen tipografías diseñadas teniendo en cuenta las limitaciones de la maquinaria con la que se crean los moldes, algunas de ellas recogidas [aqui](https://deskthority.net/wiki/Keyboard_fonts).

Ademñas de requerir moldes, el coste del PBT es entre dos y tres veces mayor que el del ABS. Por ello, es habitual que se fabriquen sets de teclas en blanco (sin leyenda), y después se [añada](https://deskthority.net/wiki/Keycap_printing) mediante impresión, sublimación, láser, gravado... Aunque con menor durabilidad, estas técnicas permiten crear leyendas más complejas. Como desventaja, las teclas son opacas en su totalidad, por lo que las leyendas no se retroiluminan. Algunos keycaps se fabrican completamente en plásticos traslúcidos para realzar los LEDs, pero no permiten ver la leyenda en la oscuridad. Una solución de bajo coste es la fabricación de sets completamente transparentes, que son pintados y después gravados para dejar visible el plástico sólo en la leyenda. Sin embargo, la durabilidad deja mucho que desear en comparación con cualquiera de las soluciones anteriores, en las que el color está en el propio material.

Como es de esperar, también hay quienes han impreso [sets completos](https://github.com/jaseg/Model-M) con [impresoras 3D](
https://www.reddit.com/r/MechanicalKeyboards/wiki/3dprinting), con las pegas esperables de productos con un [acabado](https://deskthority.net/workshop-f7/3d-printed-cherry-mx-keycap-t4620.html) de prototipo. Por un lado, no se suele utilizar PBT, sino ABS o PLA. Por otro, el acabado de la superficie depende de la calidad de la impresora, por lo que el nivel de detalle que se puede obtener suele estar limitado en las impresoras de bajo coste. Sin embargo, ninguno de estos fatores ha supuesto un freno, como puede verse por los resultados del tag [*keyboard* en thingiverse.com](https://www.thingiverse.com/tag:keyboard/). Algunos ejemplos curiosos son [tapas en Braille](https://www.thingiverse.com/thing:811030), o pequeñas [piezas](https://www.thingiverse.com/thing:584912) de color para alterar la iluminación en switches MX sin soldar. Aunque más difíciles de ver, aprovechando los cabezales con doble extrusor pueden imprimirse leyendas con resultados parecidos al moldeado en dos pasos. Si bien, el propósito inicial de los mismos era la fabricación a cera perdida. Cabe indicar que la mayoría de pruebas documentadas son de hace al menos dos años, por lo que es razonable esperar que los acabados mejoren conforme mejore la precisión de las impresoras. Aunque menos extendidas, las impresoras stereolitográficas ofrecen ya [acabados](https://learn.adafruit.com/3dprinted-custom-keycaps) notablemente mejores, y se utilizan los mismos [modelos](https://www.thingiverse.com/thing:749563) (en formato STL). Aún así, estás máquinas de prototipado no son una solución adecuada más que para tiradas cortas, debido al tiempo que requieren para fabricar cada pieza.

Por último, las solución más DIY, y clásica entre aficionados y artesanos, es el [moldeo por resina](https://www.reddit.com/r/ResinCasting/comments/1o2k2c/what_the_heck_is_resin_casting_anyway_what_can_it/). Se trata esencialmente del mismo proceso que se sigue para el moldeo por inyección, pero se utilizan materiales con los que se puede trabajar a temperatura ambiente y sin necesidad de componentes hidraúlicos. Hay varias [guías](https://geekhack.org/index.php?topic=23722.0), algunas más [recientes](https://geekhack.org/index.php?topic=62696.0) que [otras](https://geekhack.org/index.php?topic=41371.0), con resultados visualmente muy [atractivos](https://geekhack.org/index.php?topic=67744.0). Algunos modelos tienen incluso [nombre propio](http://wiki.geekhack.org/index.php?title=Click_Clack), y existe todo un mercado alrededor de los mismos. En la [variedad](https://www.google.es/search?q=artisan+keycaps&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjXl4uVlM3KAhWM7RQKHaOTBv4Q_AUIBygB&biw=1366&bih=698) está el gusto.

Más información sobre [modificación](https://www.reddit.com/r/MechanicalKeyboards/wiki/modifications#wiki_key_modifications) de [teclas](https://www.reddit.com/r/MechanicalKeyboards/wiki/3dprinting#wiki_keys), y [comparación](http://gomechanicalkeyboard.com/3d-printed-keycaps-vs-artisan-keycaps/) del acabado entre impresoras 3D y las artesanales.

## Where to buy

La sustitución y personalización de keycaps es la modificación más fácil para usuarios sin conocimientos de hardware, y también la más visual. Por ello, el mercado de keycaps de todo tipo y color es con diferencia el más extenso del ámbito de los teclados mecánicos. Son habituales los pedidos conjuntos de keyset con combinaciones de colores concretas. Se venden también teclas individuales y grupos de teclas en función de su propósito (teclas de sistema, de navegación, numpad, función...). Es habitual encontrar diseños artesanales que se venden como piezas de arte, e incluso piezas descatalogadas por hasta $250 la tecla. [Aqui](https://deskthority.net/wiki/Keycap_mount), pueden consultarse listas de fabricantes en función del tipo de montaje de las keycaps. 

# Stabilizers

- https://deskthority.net/wiki/Stabiliser
- https://www.reddit.com/r/MechanicalKeyboards/wiki/keycap_guides

---

- https://deskthority.net/wiki/Category:Keyboard_terms
- https://deskthority.net/wiki/Category:Keyboard_keys

# Automatización

- https://www.bigbluesaw.com/big-blue-saw/big-blue-saw-special-info/waterjet-and-laser-cut-keyboard-plates.html
- http://swillkb.com/
- http://builder.swillkb.com/
- https://geekhack.org/index.php?topic=65189.0
- https://deskthority.net/workshop-f7/swill-s-plate-building-tool-t10228.html
- https://geekhack.org/index.php?topic=65189.0

- Crear un set de moldes que incluya todos los modelos de un perfil:
  - Fila de función
     - 1x1
  - Fila 1
     - 1x1
     - Backspace
  - Fila 2
     - 1x1
     - Tab
	 - Enter ISO
  - Fila 3
     - 1x1
     - Caps Lock
  - Fila 4
     - 1x1
     - Left Shift
	 - Right Shift
  - Fila 5
     - Left Ctrl
	 - Left Fn
	 - Left Win
	 - Left Alt
	 - Space bar

Crear las leyendas con una impresora 3D o impresora SLA

# Coste 

- https://www.reddit.com/r/MechanicalKeyboards/wiki/switch_suppliers
- http://ortholinearkeyboards.com/education

---

- http://www.keyboardco.com/keyboard_details.asp?PRODUCT=1127
- http://www.keyboardco.com/product.asp?PRODUCT=1127
- http://matias.ca/order/#keycaps

https://deskthority.net/keyboards-f2/donjuan-goatse-and-matias-t7568.html

---

- http://pimpmykeyboard.com/
 
---

https://geekhack.org/index.php?topic=23722.0

https://geekhack.org/index.php?topic=45672.0

---

- Keycaps
  - Legend position
	 - Top
	 - Front
  - Color
		 
- http://support.wasdkeyboards.com/customer/en/portal/articles/1366948-keycap-compatibility
- http://www.keycapsdirect.com/key-caps.php
- https://www.keychatter.com/keycaps/
- http://imgur.com/a/OhRd4
- http://keypuller.com/
- https://geekhack.org/index.php?topic=45672.0
- https://www.reddit.com/r/MechanicalKeyboards/wiki/keycap_guides#wiki_plastics
- https://www.keychatter.com/keycaps/

https://www.reddit.com/r/MechanicalKeyboards/wiki/switch_suppliers

Puesto que el desembolso en switches es una parte importante del coste total, 

En [Mouser](http://www.mouser.es/Search/Refine.aspx?Keyword=cherry+mx) los Cherry MX están disponibles entre 0,706-1,11€ la unidad (dependiendo del modelo), y entre 0,57-0,896 para paquetes de 200-250. En [Digi-Key](http://www.digikey.es/product-search/en/switches/pushbutton-switches/1114209?k=cherry%20mx) están a 0,82€ la unidad y a 0,6585€ en paquetes de 250.

En el mejor de los casos, el desembolso requerido para un layout ISO 105 es de 60€, siendo 70€ una cifra más razonable, e incluso 80€ incluyendo gastos de envío.

se pueden compartir diseños de PCB (debidamente adaptados)
se pueden compartir diseños de plates (debidamente adaptados)

