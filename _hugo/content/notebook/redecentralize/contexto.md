---
categories: [ nb-redecentralize ]

title: "0. Contexto"
keywords: 

publishdate: 2016-01-01
date: 2016-01-01
---

Imitando a Fernando Trueba:

 - *soluciones*: a un problema/dificultad, prácticas, suficientes 
 - *libres*: 0) usar, 1) estudiar, 2) distribuir y 3) mejorar
 - *entornos*: conjunto de herramientas
 - trabajo/*colaboración*: multiusuario, ágil
 - *distribuidos*: deslocalización, redes de comunicación
 - *multiplataforma*: características hardware y SOs
 
### [Seguridad de la información](https://es.wikipedia.org/wiki/Seguridad_de_la_informaci%C3%B3n)

 - Confidencialidad
 - Integridad
 - Disponibilidad
 - Autenti(fi)cación
 
gestión de las claves
esquemas
valorar el riesgo vs esfuerzo
dependencia tecnológica

Existe una cierta controversia sobre la seguridad del software libre frente al software no libre (siendo uno de los mayores asuntos la seguridad por oscuridad). Un método usado de forma habitual para determinar la seguridad relativa de los productos es determinar cuántos fallos de seguridad no resueltos existen en cada uno de los productos involucrados. Por lo general, los usuarios de este método recomiendan que no sean usados productos que no suministren un método de solucionar los fallos de seguridad, al menos hasta que no esté disponible un arreglo

como conclusión, vamos a configurar las terminales para que el texto sea verde sobre fondo negro
 
http://sindominio.net/hackmeeting/wiki/2015/Nodos/Como_hacer_un_taller_practico_de_seguridad_con_Tails/como
 
### [¿De dónde venimos? ¿A dónde vamos? ¿Quiénes somos?](https://www.youtube.com/watch?v=-GEnuQCEeiE)

 **P**: *Conceptos que nos vienen a la cabeza cuando hablamos de 'evolución de la web'*

Si buscamos información sobre la evolución de la web, encontramos resultados principalmente técnicos, como muestra la imagen siguiente:

![Web 1.0, 2.0, 3.0, 4.0...](http://novaspivack.typepad.com/RadarNetworksTowardsAWebOS.jpg "Web 1.0, 2.0, 3.0, 4.0...")

Son muchos términos. En la página [evolutionoftheweb.com](http://www.evolutionoftheweb.com) se hace especialmente patente que crecen exponencialmente. Resulta imposible conocerlos todos, naturalmente. Pero es difícil incluso tratar de aislar una sola tecnología y entender qué hay detrás. En lugar de coger una solución técnica actual, vamos a echar la vista atrás: ¿dónde empezó todo?

 **P**: *¿Qué sabemos sobre cómo empezó Internet? ¿Cuándo? ¿Quiénes? ¿Por qué? ¿Para qué?*

[Mercè Molist](http://ww2.grn.es/merce/), periodista catalana vinculada con la comunidad hacktivista, publicaba en mayo de 2012 el árticulo ['Por qué me enamoré de los hackers'](http://www.elmundo.es/elmundo/2012/05/25/navegante/1337954941.html), donde se lee:

> *"Internet es hija de la comunidad hacker y la forma como está montada, como funciona, transmite su forma de ser. Por eso quien entra, cambia. Mucho o poco, pero cambian sus conexiones neuronales y sociales, se activan ideas y un sentido de la moral que quizás ya tenía, pero estaba durmiendo, sin espacio donde expresarse."*

 **P**: *¿Qué nos viene a la cabeza cuando hablamos de 'hackers'? ¿Y de [cyberpunk](https://en.wikipedia.org/wiki/Cyberpunk)?*
 
 **P**: *¿Conocemos el nombre de algún hacker? ¿Kevin Mitnick? ¿Phil Zimmermann? ¿Loyd Blankenship (The Mentor)?*

En enero de 1986, The Mentor escribió ['The Conscience of a Hacker'](http://phrack.org/issues/7/3.html) en el zine [Phrack](http://phrack.org). En 2001, Pekka Himanen, firmaba ['La ética del hacker y el espíritu de la era de la información'](http://eprints.rclis.org/12851/1/pekka.pdf). Con un registro más cercano, Mercè expone en su artículo:

> *"Un hacker, dice un amigo, es alguien capaz de encontrar una solución elegante a un problema importante."*
 
 **P**: *¿Cómo se organiza la comunidad hacker? ¿Cuáles son las características principales de la comunicación y la coordinación?*
 
 **P**: *¿Qué son [BlackHat](https://www.blackhat.com/), [DEFCON](https://www.defcon.org/) o el [Chaos Computer Club](https://www.ccc.de/en/)?*
 
 **P**: *¿Dónde situamos a WikiLeaks? ¿Anonymous? ¿GDT de la GC? ¿Hacking Team? ¿FSF? ¿15M? ¿Corrupción?*

 **P**: *Black/White*
 
El término 'hacktivismo' se utiliza para aunar a las comunidades hacker y activistas. En enero de 2000 se emitió en TVE el programa ['Internet Zona Peligrosa'](https://vimeo.com/29796646) de 'Documentos TV'. En octubre de 2002 se emitieron en La2 de TVE, en el programa 'La Noche Temática', los documentales ['Hacktivistas: los agitadores de la red' y 'Código Linux'](https://www.youtube.com/watch?v=mNoLF9H58ZU), y a continuación la película 'Los Fisgones' ([Sneakers](http://www.imdb.com/title/tt0105435/), en ingles). La fecha de emisión del programa no es casual, sino que se situa en el centro del periodo con mayor visibilidad pública del hactivismo ibérico. 

Para entender el contexto, resulta deliciosa la lectura de la publicación en formato wiki ['Hackstory'](http://hackstory.net) (que también está disponible en PDF en [hackstory.es](http://hackstory.es/)). Este proyecto, propuesto y liderado por Mercè Molist a lo largo de los últimos años, es un inestimable esfuerzo por recuperar la memoria colectiva. Las citas en la portada dicen:

> *"Hacker era el que conseguía programar esa rutina aun mas pequeña y bella."*

> *"Hacker era aquel que respetaba el trabajo de otros a los que reconocía como iguales."*

> *La Ética hacker:*

> 1. *Pon las cosas en práctica.*
> 2. *Toda la información debería ser libre.*
> 3. *No creas a la autoridad. Promueve la descentralización.*
> 4. *Puedes crear arte y belleza con un ordenador.*

Este espíritu da pie a relatos y entrevistas que repasan la historia 
de la escena hacker ibérica desde sus inicios en los 60 y 70 hasta bien entrados los 2000. Se presentan los inicios de colectivos como [Hacktivistas](http://hacktivistas.net/), o los encuentros denominados 'Hackmeeting' ([Italia](http://www.hackmeeting.org/), [Ibérico](http://www.sindominio.net/hackmeeting)), que siguen *activos* hoy. Entre 2006 y 2008, EVhAck, con la colaboración de patxangas, txopi y xavi (todos ellos de [SinDominio.net](http://www.sindominio.net)), firmó una serie de artículos en la ya extinta revista '@rroba', que componen un monográfico sobre el hacktivismo. Xabier, también de [SinDominio](http://www.sindominio.net/~xabier), aloja en el directorio ['textos/evhack'](http://www.sindominio.net/~xabier/textos/evhack/) el compendio ['12 lecturas sobre Hacktivismo'](http://www.sindominio.net/~xabier/textos/evhack/12_lecturas_hacktivismo.pdf), de imprescindible lectura:

> - *Hacktivismo: Desde Mururoa hasta Chiapas, pasando por Tejas*
> - *Hacktivismo Extendido: Robótica contestataria y hacking jurídico*
> - *Cypherpunk: Criptografía rebelde*
> - *HackMeeting 2005: Tres días de libertad en construcción permanente*
> - *HackLabs: Un cuerpo social para el hacktivismo*
> - *Metabolik BioHackLab: Metabolizando autonomía digital*
> - *Cielito Lindo: Un hacklab enredando en Lavapiés*
> - *Voces Abiertas: Streaming de radio desde la retaguardia hacktivista*
> - *Hack.IT: Socializar saberes sin fundar poderes*
> - *IndyMedia.Org: La mayor red mediactivista contra la hegemonía informativa*
> - *TAZ 2.0: Servidores autónomos e infraestructura global de los pueblos (parte I)*
> - *TAZ 2.0: Servidores autónomos e infraestructura global de los pueblos (parte II)*

Y en la wiki de [wiki de hacktivistas.net](http://wiki.hacktivistas.net) se encuentran tres:

> - [Hacktivismo I: Desde Mururoa hasta Chiapas, pasando por Texas](http://wiki.hacktivistas.net/images/EVhAck_-_Hacktivismo_I_-_CC-by-sa.pdf)
> - [Hacktivismo II: Códigos, flujos, redes](http://wiki.hacktivistas.net/images/EVhAck_-_Hacktivismo_II_-_CC-by-sa.pdf)
> - [Hacktivismo III: Pasado, presente y futuro]( http://wiki.hacktivistas.net/images/EVhAck_-_Hacktivismo_III_-_CC-by-sa.pdf)

En el imaginario colectivo de la comunidad hacker, la comprensión del concepto de TAZ (*'Temporary Autonomous Zone'* en ingles, *'Zona Autónoma Temporal'* en castellano) es vital. Se hace patente en los títulos utilizados en las dos últimas lecturas, y especialmente en la [entrada sobre Wau Holland en HackStory](http://hackstory.net/Wau_Holland). Este tiene su origen en [T.A.Z.: The Temporary Autonomous Zone, Ontological Anarchy, Poetic Terrorism](http://hermetic.com/bey/taz_cont.html) ([traducción](http://lahaine.org/pensamiento/bey_taz.pdf)) escrito por [Hakim Bey](https://es.wikipedia.org/wiki/Hakim_Bey); donde se analizan la red y la web partiendo de sus estudios sobre utopías piratas.

 **P**: *¿Qué conocemos de esta comunidad hacker (la ibérica)?*
 
 **P**: *¿Cuáles de los términos clave conocemos? hacktivismo, hackmeeting, hacklab, hackit, sindominio, indymedia...*

 **P**: *¿Conocemos [Metabolik](http://www.sindominio.net/metabolik/weblog/), [Hackelarre](https://twitter.com/hackelarre), Gobelab, [Mundurat](http://www.mundurat.net/), [hack.in#badakigu](http://hackinbadakigu.net/)...?*

 **P**: *¿Qué casos conocemos en los medios? !Hispahack, Isla Tortuga,  Millenium...*
 
 **P**: *¿Qué acciones recordamos? [Tarifa plana](http://hackstory.net/Fronteras_Electr%C3%B3nicas#Las_huelgas_pro_Tarifa_Plana),  ['Música, cine y televisión legal, libre y gratuita en Internet - Guía para madres y profesoras'](http://estaticos.elmundo.es/documentos/2011/04/27/guia_hacktivistas_final.pdf) (en formato [wiki](http://wiki.hacktivistas.net/index.php?title=Gu%C3%ADa_para_madres_y_profesoras))* 
 
 **P**: *¿Cuál es la situación actual? ¿De qué infraestructura dispone la comunidad hacktivista ibérica/local? ¿Cuál es el ánimo de la comunidad?*
 
La gestión de los derechos de autor, el derecho a copia y difusión de los contenidos... los aspectos relacionados con la propiedad intelectual, en general, han tenido un amplio seguimiento. Un ejemplo es el documental [¡Copiad, malditos!](http://www.rtve.es/television/documentales/copiad-malditos/) con una licencia Creative Commons y disponible en la página de TVE.

Con respecto al sector de la seguridad y el desarrollo informático, Fermin J. Serna aka Zhodiac, de !Hispahack, termina su prólogo para HackStory con las siguientes palabras:
 
> *"Como dirían los americanos "fast forward today" muchas de estas características lamentablemente se han perdido. La entrada del dinero en este sector aniquiló este sentimiento o forma de vida hacker. Nuevos acomodados consultores con aires de prepotencia sin ganas de evolucionar, recursos al alcance de bolsillos modestos y, lo más importante, la falta de colaboración. La información es dinero y el dinero genera avaricia.*
 
> *Una vez este estilo de vida fue perdido, es importante documentarlo para que, en un futuro, pueda ser revivido en esta u otra faceta. Me preguntaba la autora quién querrá leer este libro, fácil respuesta, nuestra descendencia. Estoy seguro que nuevos y románticos hackers en múltiples disciplinas revivirán este sentimiento y aprenderán que un hobby no debe ser viciado por el dinero. Llegado tal momento, lamentablemente deja de ser un hobby."*

En cuanto a infraestructuras libres, Mundurat cerró en 2010. [SinDominio.net: por un dominio antagonista de la red, por la necesidad de comunicar libremente](http://sindominio.net/), proyecto similar a nivel estatal, publicó este comunicado hace unas semanas:

> Como muchos sabéis, SinDominio es un servidor que nació con una vocación experimental. Aspirábamos a crear un servidor autogestionado, donde la línea entre usuarios y administradores se borrase, donde la administración estuviese lo más distribuida posible y donde todos y todas nos apropiáramos de la tecnología. Por ese motivo, nunca se cobró por los "servicios" que se ofrecían: cuentas y listas de correo, espacio web, etc. Cada persona era considerada un miembro más, en igualdad de condiciones, y, como tal, se ligaba a sindominio a través de su asamblea y colaboraba con todoas los demás en la gestión común: cada cual según sus posibilidades y conocimientos, pero también con la puerta abierta para aprender. ¡Todoas hackers! era la consigna.

> Internet ha cambiado mucho desde entonces. Y la comunidad que alimentaba a SinDominio se ha debilitado. Hoy por hoy, a pesar de albergar cientos de cuentas de correo, listas y páginas web, la participación en la asamblea es muy baja y SinDominio no logra siquiera recaudar lo suficiente para mantener sus máquinas operativas. Quienes utilizan sus servicios, cada vez se sienten menos ligados al proyecto y, en los últimos meses, las aportaciones voluntarias que cada cual hace no llegan ni siquiera para cubrir lo que cuesta mantener las máquinas enchufadas a internet. Cada día que pasa, vamos acumulando más deudas.

> Esto nos ha llevado a tomar una decisión drástica: si no logramos reunir para el 31/12/2015 el dinero suficiente para continuar (5.000 euros), nos veremos obligados a apagar las máquinas y, con ellas, todos los servicios que hoy funcionan dejarán de hacerlo. En realidad, si cada persona con una cuenta de correo en sindominio o que participa en una de sus múltiples listas, pusiera 10 euros, recaudaríamos con creces el dinero necesario para cubrir la deuda y continuar.

> Una vez recaudado el dinero, el objetivo no es solo mantenerse a flote, sino repensar el modelo en el nuevo contexto, sobre todo ante la multiplicación de servidores comerciales que nos ofrecen servicios a cambio de una dependencia total, que incluye explotar nuestros datos y metadatos, sumergirnos en publicidad o poner restricciones artificiales. Estamos convencidos de que mantener servidores autogestionados, donde las comunicaciones se mantengan a salvo de la mirada y las garras de gobiernos y empresas, es hoy más importante que nunca.

La red N-1.cc de [Lorea](http://lorea.org/), red social federada basada en [Elgg](https://elgg.org/), está en situación crítica también. En los [archivos](https://listas.sindominio.net/pipermail/hackmeeting/) de la lista de hackmeeting puede consultarse un debate reciente al respecto. En los mismos archivos hay mensajes de reflexión de estos últimos meses sobre el propio hackmeeting también.

En términos generales, hay 'hackers' que están ganándose la vida en programas de televisión, congresos, ponencias, con la publicación de libros... pero la comunidad está pidiendo ayuda. Más concretamente un cambio generacional que se espera desde hace tiempo y parece no llegar. Youtubers y el desarrollo de videojuegos son la proyección de los deseos de las nuevas generaciones.

guifinet
itsas
eghost

[diariolinux.com](http://diariolinux.com/)

[RFC1855](http://tools.ietf.org/html/rfc1855)

"No te afanes, alma mía, por una vida inmortal, pero agota el ámbito de lo posible." cita de Píndare que abre el ensayo
El mito de Sísifo - Albert Camus
http://www.correocpc.cl/sitio/doc/el_mito_de_sisifo.pdf

"Sísifo, dentro de la mitología griega, como Prometeo, hizo enfadar a los dioses por su extraordinaria astucia. Como castigo, fue condenado a perder la vista y a empujar perpetuamente un peñasco gigante montaña arriba hasta la cima, sólo para que volviese a caer rodando hasta el valle, desde donde debía recogerlo y empujarlo nuevamente hasta la cumbre y así indefinidamente."
https://es.wikipedia.org/wiki/El_mito_de_S%C3%ADsifo

Lorea
Bitcoin
ARM

### Autogestión

http://blogxpopuli.org/wiki/Web_Libre

web distribuida
redecentralize
bittorent
bitcoin

Why should anyone care?

Motivations vary. These four keep coming up:

  Resilience - whether there’s a hurricane, a severed trans-atlantic cable or just a train line with a poor connection, we’d like to be able to carry on making phone calls and sharing documents.
  Privacy - as a company keeping our commercial secrets, or as an individual concerned about our government overstepping the line, we'd like our most personal messages not to be held in distant data centres.
  Competition - instead of being buyers forced to buy books from one store, or sellers forced to use one payment processor, we'd like democratic digital marketplaces and currencies.
  Fun - innovation on the network is slowing down, and increasingly either superficial or limited to large companies. Instead, we'd like our community to form new protocols so that creative new services can be built.

http://redecentralize.org/interviews/
https://github.com/redecentralize/alternative-internet

no usar ningún servicio externo

hackear las mentes

la legislación ha evolucionado
espacio de pruebas controlado
sumar recursos

![https://en.wikipedia.org/wiki/File:SRI_First_Internetworked_Connection_diagram.jpg](https://upload.wikimedia.org/wikipedia/commons/d/d5/SRI_First_Internetworked_Connection_diagram.jpg "Wikipedia - First Internetworked Connection diagram")

tener tus recursos bajo tu control, en la medida de lo posible. como último extremo poder sacar tus tareas adelante aunque falle todo aquello que se escapa a tu capacidad

Arina, HPC, Datacenter
VPS
usar el ordenador de sobremesa desde el balcón, el jardín
gestionar varias máquinas virtuales
ordenador del despacho
vacaciones (redes no confiables/públicas)
VPN Cisco

### [Funciones hash](https://en.wikipedia.org/wiki/Hash_function)

Algoritmos que convierten datos de longitud arbitraria a un tamaño fijo.

#### Colisión

![https://en.wikipedia.org/wiki/File:Hash_table_4_1_1_0_0_1_0_LL.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Hash_table_4_1_1_0_0_1_0_LL.svg/450px-Hash_table_4_1_1_0_0_1_0_LL.svg.png "Wikimedia - Illustration of a hash function mapping four names to the integers 0..15, with one collision")

#### Perfecto

![https://en.wikipedia.org/wiki/File:Hash_table_4_1_1_0_0_0_0_LL.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Hash_table_4_1_1_0_0_0_0_LL.svg/450px-Hash_table_4_1_1_0_0_0_0_LL.svg.png "Wikimedia - Hash function illustration with four names being mapped to the integers 0..15, without collisions")

#### Perfecto mínimo

![https://en.wikipedia.org/wiki/File:Hash_table_4_1_0_0_0_0_0_LL.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Hash_table_4_1_0_0_0_0_0_LL.svg/450px-Hash_table_4_1_0_0_0_0_0_LL.svg.png "Wikimedia - Minimal perfect hash functionn with four names being mapped to the integers 0..3, without collisions")

### [Criptografía asimétrica](https://es.wikipedia.org/wiki/Criptograf%C3%ADa_asim%C3%A9trica)

> La criptografía asimétrica (en inglés *asymmetric key cryptography*), también llamada criptografía de clave pública (en inglés *public key cryptography*) o criptografía de dos claves (en inglés *two-key cryptography*), es el método criptográfico que usa un par de claves para el envío de mensajes.
> - Las **dos claves pertenecen a la misma persona** que ha enviado el mensaje.
> - **Una clave es pública y se puede entregar a cualquier persona**.
> - **La otra clave es privada y debe guardarla de modo que nadie tenga acceso a ella**.
> Además, los métodos criptográficos garantizan que esa pareja de claves sólo se puede generar una vez, de modo que se puede asumir que no es posible que dos personas hayan obtenido casualmente la misma pareja de claves.

![http://www.camerfirma.com/ayuda/tutorial-firma/](http://www.camerfirma.com/wp-content/uploads/2012/03/manual1.png "camerfirma.com - Criptografía Asimétrica")

Más información:
 - [Why I Wrote PHP](https://www.philzimmermann.com/EN/essays/WhyIWrotePGP.html) - [Philip Zimmermann](https://www.philzimmermann.com)
 - [Pretty Good Privacy - PGP](https://en.wikipedia.org/wiki/Pretty_Good_Privacy)
 - [GnuPG](https://www.gnupg.org/)
 - [learncriptography.com](http://learncryptography.com/)
 - [crypt4you.Aula Virtual](http://www.criptored.upm.es/crypt4you/portada.html)
 - Curso [*Un viaje por la criptografía* de Khan Academy](https://es.khanacademy.org/computing/computer-science/cryptography).

### Confianza

 - Uso de una infraestructura de clave pública o PKI (entidades de certificación, [cacert.org](http://www.cacert.org/), [letsencrypt.org](https://letsencrypt.org/)).
 - Establecimiento de una red de confianza (fiesta de firmas).

En [Wikipedia - Criptografía asimétrica: Esquemas de propagación de la confianza](https://es.wikipedia.org/wiki/Criptograf%C3%ADa_asim%C3%A9trica):
 
> - Nivel 1: La autoridad puede calcular claves secretas de usuarios y por tanto pueden hacerse pasar como cualquier usuario sin ser detectado. Las firmas basadas en identidad pertenecen a este nivel de confianza

> - Nivel 2: La autoridad no puede calcular claves secretas de usuarios, pero puede todavía hacerse pasar como cualquier usuario sin ser detectado. Firmas sin certificados pertenecen a este nivel

> - Nivel 3: La autoridad no puede calcular claves secretas de usuarios, y tampoco puede hacerse pasar como un usuario sin ser detectado. Es el nivel más alto de fiabilidad. Las firmas tradicionales PKI y la firmas basadas en certificados pertenecen a este nivel

 
### [Internet protocol suite](https://en.wikipedia.org/wiki/Internet_protocol_suite)

 - Internet model:
   - Application layer: DHCP, DNS, FTP, HTTP, IMAP, LDAP, POP, SIP, SMTP... !SSH !TLS/SSL
   - Transport layer: TCP, UDP... 
   - Internet layer: IPv4, IPv6... !IPsec
   - Link layer: MAC

![https://en.wikipedia.org/wiki/File:IP_stack_connections.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/IP_stack_connections.svg/735px-IP_stack_connections.svg.png "Wikipedia - Operation of the Internet Protocol suite between two Internet hosts connected via two routers (top) and the corresponding layers of the IP suite in use at each hop (bottom)")
  
---