# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create({
    "username"=>"Relativity",
    "firstname"=>"Albert",
    "lastname"=>"Einstein",
    "password"=>"123456",
    "birthdate"=>"1879-03-14",
    "email"=>"aeinstein@example.com",
})
User.create({
    "username"=>"Joe",
    "firstname"=>"Joe",
    "lastname"=>"Vasconcellos",
    "password"=>"koalas",
    "birthdate"=>"1652-01-04",
    "email"=>"joevas@example.com",
})
User.create({
  "username"=> "cbishop0",
  "firstname"=> "Carol",
  "lastname"=>"Bishop",
  "email"=> "cbishop0@printfriendly.com",
  "password"=> "CoFF7DBfPJ",
  "birthdate"=> "1989-07-26"
})
User.create({
  "username"=> "sharper1",
  "firstname"=> "Shirley",
  "lastname"=>"Harper",
  "email"=> "sharper1@t.co",
  "password"=> "OPWup3kh",
  "birthdate"=> "1997-12-24"
})
User.create({
  "username"=> "lhoward2",
  "firstname"=> "Lawrence",
  "lastname"=>"Howard",
  "email"=> "lhoward2@mapquest.com",
  "password"=> "L6NLcFnjLeE",
  "birthdate"=> "1983-09-20"
})
User.create({
  "username"=> "sfoster3",
  "firstname"=> "Sandra",
  "lastname"=>"Foster",
  "email"=> "sfoster3@tiny.cc",
  "password"=> "eLKH4DwTWmX",
  "birthdate"=> "1992-02-26"
})
User.create({
  "username"=> "bporter4",
  "firstname"=> "Betty",
  "lastname"=>"Porter",
  "email"=> "bporter4@cisco.com",
  "password"=> "jptKdG",
  "birthdate"=> "1988-03-28"
})
User.create({
  "username"=> "cjackson5",
  "firstname"=> "Charles",
  "lastname"=>"Jackson",
  "email"=> "cjackson5@chicagotribune.com",
  "password"=> "dSauT1bfKTMC",
  "birthdate"=> "1992-01-14"
})
User.create({
  "username"=> "itucker6",
  "firstname"=> "Irene",
  "lastname"=>"Tucker",
  "email"=> "itucker6@feedburner.com",
  "password"=> "7i8RfFw",
  "birthdate"=> "1997-07-08"
})
User.create({
  "username"=> "rgreene7",
  "firstname"=> "Ruby",
  "lastname"=>"Greene",
  "email"=> "rgreene7@cornell.edu",
  "password"=> "cY71eB7fiU",
  "birthdate"=> "1993-02-13"
})
User.create({
  "username"=> "jwilliamson8",
  "firstname"=> "Jonathan",
  "lastname"=>"Williamson",
  "email"=> "jwilliamson8@storify.com",
  "password"=> "Dp31lZt9xl",
  "birthdate"=> "1987-12-24"
})
User.create({
  "username"=> "anelson9",
  "firstname"=> "Albert",
  "lastname"=> "Nelson",
  "email"=> "anelson9@nature.com",
  "password"=> "rgRaiEDpgUB",
  "birthdate"=> "1999-04-23"
})
Category.create({
    "name"=>"Otros",
})
Category.create({
    "name"=>"Lenguaje",
})
Category.create({
    "name"=>"Matematicas",
})
Category.create({
    "name"=>"Ingles",
})
Category.create({
    "name"=>"Computacion",
})
Category.create({
    "name"=>"Arte",
})
Category.create({
    "name"=>"Musica",
})
Category.create({
    "name"=>"Quimica",
})
Category.create({
    "name"=>"Fisica",
})
Category.create({
    "name"=>"Biologia",
})
Category.create({
    "name"=>"Historia",
})

Project.create({
  "title"=>"Curso de Guitarra basico",
  "video_link"=>"https://www.youtube.com/watch?v=l8Ptu_LC__Q",
  "description"=>"Leccion 1, este curso es gracias a misterguitarra007",
  "category_id"=>"7",
  "content"=>"El propósito fundamental de éste curso es ofrecerte un detallado
  y completo estudio de lo más básico del estudio de la guitarra, independientemente
  del estilo que quieras tocar. Voy a intentar abarcarlo en 20 lecciones. No sólo sirve 
  para principiantes, sino también a todos aquellos que quieran tomar una retroalimentación.
  Es muy complicada la enseñanza de éste tipo, así que te recomiendo que si tienes dudas 
  me lo hagas saber. Al final de cada lección hay una ventana en donde podrás escribir 
  tu duda o algún comentario que tengas sobre ella. De ésta manera conseguiré los errores
  u omisiones de cada una de ellas, y así podré mejorarlas. Si lo deseas puedes hacerlo
  directamente a la cuenta de email.

  Antes de empezar, es necesario fijar varios puntos:
  1. Lo más conveniente es que utilices una guitarra acústica con cuerdas de nylon (tipo clásica)
  para aprender. No importa si lo vas a hacer con una eléctrica (si vas a practicar con 
  amplificador siempre en tono limpio) o con una acústica con cuerdas de acero, pero es 
  mejor con la que te recomiendo. Púa

  2. Consigue una púa (plumilla) ya que con ella vas a realizar varios de los ejercicios 
  que se encuentran en éste curso. Sería muy conveniente que compraras varias ya que es
   muy común que se pierdan. Estas las compras en cualquier tienda de accesorios para músicos.

  3. No trates de ir demasiado rápido, El hecho de que puedas avanzar de una lección a
   otra de una manera rápida (con sólo un click) no significa que estás listo para la siguiente.
    Trata de entender y dominar cada lección que tomes antes de avanzar.

  4. Todo ejercicio debe estudiarse muy lentamente, y una vez dominado puede acelerarse, 
  pero nunca a un tiempo que impida el control de los movimientos. Esta frase es ya muy conocida, 
  es importante que entiendas que cuando se aprende a tocar un instrumento lo más que debes darle 
  importancia es la calidad del sonido que produces, no a la velocidad en que tocas.

  6. Y por último, paciencia y constancia. Toma un tiempo determinado cada día (aunque sea corto)
   y trata de ser consistente. No se vale desanimarse, toma tu propio paso, poco a poco.
    Trataré de ser lo más motivante posible, pero si no te comprometes contigo mismo a aprender 
    entonces estaremos perdiendo el tiempo.",
})

ProjectPhoto.create({
  "project_id"=>"1",
  "photo"=>File.new("#{Rails.root}/app/assets/images/musica_default1.png"),
  "description"=>"Canciones basicas"
})

ProjectPhoto.create({
  "project_id"=>"1",
  "photo"=>File.new("#{Rails.root}/app/assets/images/musica_default2.png"),
  "description"=>"Notas"
})

ProjectPhoto.create({
  "project_id"=>"1",
  "photo"=>File.new("#{Rails.root}/app/assets/images/musica_default3.png"),
  "description"=>"Anatomia de la guitarra"
})

Owner.create({
    "project_id"=>"1",
    "user_id"=>"2",
})


Project.create({
  "title"=>"Yoga para combatir la ansiedad",
  "video_link"=>"https://www.youtube.com/watch?v=4_tmxoHWrOw",
  "description"=>"Funciona para todas las edades, este curso es gracias a Asana Yoga Telemedellín",
  "category_id"=>"1",
  "avatar"=>File.new("#{Rails.root}/app/assets/images/yoga.png"),
  "content"=>"Existen muchas opciones de yoga, basados en la habilidad 
  física y las preferencias de la persona que lo practica. El tipo de 
  yoga más común se llama Hatha yoga y combina tres elementos: posturas
  físicas, llamadas asanas, respiración controlada que se combina con 
  las asanas y un corto período de relajación profunda o meditación. Estas
  características hacen del yoga un aliado excelente para controlar la ansiedad,
  pues nos lleva a un conocimiento profundo de nuestro propio cuerpo. Controlar
  las posturas físicas o asanas, no es algo sencillo, debemos realmente concentrarnos
  y olvidar todo lo que nos angustia, funcionando como una excelente herramienta
  de distracción. Finalmente la respiración controlada y la relajación profunda, son de
  los aliados más simples contra la ansiedad.

  De acuerdo con un artículo reciente de la universidad de Harvard, los estudios sugieren 
  que la práctica regular de yoga hace que nuestra respuesta al estrés sea más flexible. 
  Ser más flexible ante el estrés es algo positivo en muchos sentidos. Al parecer
  las personas que tienen una respuesta deficiente ante el estrés son también más sensibles al dolor.
  Como casi cualquier ejercicio, el yoga también ayuda a liberar endorfinas, las cuales levantan el estado de ánimo.

  Al parecer, debido a todas las características anteriores, el yoga puede ser una práctica 
  útil para casi todas las diferentes manifestaciones de ansiedad o trastornos muy 
  relacionados con la misma, como depresión, estrés post traumático, trastorno de pánico
   y ansiedad generalizada.
  A pesar de que en general el yoga es muy seguro, algunos ejercicios pueden ser extenuantes 
  y puede no ser adecuados para todos. En general se recomienda consultar primero con un 
  médico antes de elegir el yoga como una opción de tratamiento, particularmente pacientes
   con alguna condición médica particular.
",
})

ProjectPhoto.create({
  "project_id"=>"2",
  "photo"=>File.new("#{Rails.root}/app/assets/images/otros_default1.png"),
  "description"=>"Posiciones"
})
ProjectPhoto.create({
  "project_id"=>"2",
  "photo"=>File.new("#{Rails.root}/app/assets/images/otros_default2.png"),
  "description"=>"Posiciones"
})
ProjectPhoto.create({
  "project_id"=>"2",
  "photo"=>File.new("#{Rails.root}/app/assets/images/otros_default4.png"),
  "description"=>"Posiciones"
})

Owner.create({
    "project_id"=>"2",
    "user_id"=>"3",
})


Project.create({
  "title"=>"Curso basico de Excel",
  "video_link"=>"https://www.youtube.com/watch?v=T9EXplaptnY",
  "description"=>"Lección 1, este curso es gracias a Saber Programas",
  "category_id"=>"5",
  "content"=>"Como sabes Excel es una hoja de cálculo que te permite realizar multitud 
  de acciones, no solo con datos numéricos, sino también con fórmulas, gráficos, 
  etc.( Para conocer sobre la última versión de este programa de hojas de cálculo, puedes 
  leer: Estrena Excel, nueva versión Excel 2016.)Si estás dando tus primeros pasos con Excel 
  y en general con cualquier hoja de cálculo, te será de ayuda este practico tutorial en donde 
  a continuación te resumo las principales acciones a realizar cuando estés empezando con el
   programa, incluso partiendo desde el principio.
  "
})


ProjectPhoto.create({
  "project_id"=>"3",
  "photo"=>File.new("#{Rails.root}/app/assets/images/computacion_default2.png"),
  "description"=>"Tabla"
})



Owner.create({
    "project_id"=>"3",
    "user_id"=>"4",
})


Project.create({
  "title"=>"Muñecas de lana angry birds",
  "video_link"=>"https://www.youtube.com/watch?v=YU_oKGAC3fI",
  "description"=>"Son muy bonitos :), este curso es gracias a EggSurprise",
  "category_id"=>"6",
  "avatar"=>File.new("#{Rails.root}/app/assets/images/angry.png"),
  "content"=>"Como Hacer Muñecos de Lana de Angry Birds.Manualidades Caseras 
  con Algodón.Pompones de Algodón.En este video te muestro cómo hacer unos bonitos
  pompones de algodón o peluches de Angry Birds.Tan solo necesitas,lana de algodón,
  tijeras,un poco de cartón,cola,tijeras y fieltro para hacer el pico y plumas.Son originales
  y divertidos.Puedes crearlos de todos los colores que quieras.oAngry Birds es una multimillonaria 
  serie de videojuegos creado en 2009 por la empresa finlandesa Rovio Entertainment.
  Desde entonces, el juego ha sido adaptado a dispositivos de pantalla táctil, como
  los basados en Maemo, iOS, Symbian, Java y Android.Con más de mil millones de 
  descargas en 2012, esta aplicación fue la más popular del año en la App Store de Apple.
  y la Google Play Además es también el juego más vendido de la historia en soportes
  móviles.Sin embargo, Angry Birds no es sólo un fenómeno digital: los personajes 
  son tan populares que la empresa empezó a comercializar juguetes físicos
  de los pájaros, disfraces y tod tipo de merchandising.
"
})

ProjectPhoto.create({
  "project_id"=>"4",
  "photo"=>File.new("#{Rails.root}/app/assets/images/art_default1.png"),
  "description"=>"Final"
})
ProjectPhoto.create({
  "project_id"=>"4",
  "photo"=>File.new("#{Rails.root}/app/assets/images/art_default2.png"),
  "description"=>"1"
})
ProjectPhoto.create({
  "project_id"=>"4",
  "photo"=>File.new("#{Rails.root}/app/assets/images/art_default3.png"),
  "description"=>"2"
})
ProjectPhoto.create({
  "project_id"=>"4",
  "photo"=>File.new("#{Rails.root}/app/assets/images/art_default4.png"),
  "description"=>"3"
})
ProjectPhoto.create({
  "project_id"=>"4",
  "photo"=>File.new("#{Rails.root}/app/assets/images/art_default5.png"),
  "description"=>"4"
})

Owner.create({
    "project_id"=>"4",
    "user_id"=>"3",
})


Project.create({
  "title"=>"Combate Naval de Iquique",
  "video_link"=>"https://www.youtube.com/watch?v=qaI7sGYRAeI",
  "description"=>"El combate naval de Iquique fue uno de los enfrentamientos llevados a cabo durante la campaña naval de la Guerra del Pacífico.",
  "category_id"=>"11",
  "avatar"=>File.new("#{Rails.root}/app/assets/images/combate.png"),
  "content"=>"El 21 de mayo es una fiesta para el pueblo de Chile. Ese día conmemoramos
   el Combate Naval de Iquique, desarrollado en uno de los principales escenarios de 
   la Guerra del Pacífico (1879-1883): el mar.

  Esta era la vía fundamental para el traslado de víveres y tropas, 
  y para la continuación del comercio regular entre Chile, Perú y Bolivia, los países en conflicto.


  Fue el día en que los hombres de la frágil Esmeralda, comandados por Arturo Prat, dieron su 
  vida por una causa que les parecía justa y necesaria, en un combate muy desigual contra la 
  tripulación del poderoso Huáscar. A su heroísmo, se unió el triunfo de la astucia y habilidad 
  de los marinos de la Covadonga -acertadamente comandada por Carlos Condell-, que permitió inutilizar
  uno de los dos acorazados peruanos, la Independencia.

  Al amanecer del 21 de mayo, desde la Covadonga se avistaron los humos de las naves peruanas.
   Prat se preocupó de que sus hombres se alimentaran, y cerca de las 8 de la mañana comenzaron
    los ritos del combate. Gaspar Cabrales, el tambor y corneta de diez o doce años, tocó la orden 
    de atención y Prat se dirigió a su gente:
    Muchachos: la contienda es desigual! Nunca nuestra bandera se ha arriado ante el enemigo, 
    espero pues que no sea ésta la ocasión de hacerlo. Mientras yo esté vivo, esa bandera flameará en 
    su lugar, y os aseguro que si muero, mis oficiales sabrán cumplir con su deber. ¡Viva Chile!
  "
})

ProjectPhoto.create({
  "project_id"=>"5",
  "photo"=>File.new("#{Rails.root}/app/assets/images/historia_default1.jpg"),
  "description"=>"Arturo Pratt"
})
ProjectPhoto.create({
  "project_id"=>"5",
  "photo"=>File.new("#{Rails.root}/app/assets/images/historia_default2.jpg"),
  "description"=>"Guerra"
})
ProjectPhoto.create({
  "project_id"=>"5",
  "photo"=>File.new("#{Rails.root}/app/assets/images/historia_default3.jpg"),
  "description"=>"Mapa"
})



Owner.create({
    "project_id"=>"5",
    "user_id"=>"3",
})








Comment.create({
    "content"=>"Excelente!",
    "user_id"=>"1",
    "project_id"=>"1",
})
Comment.create({
    "content"=>"Muy bueno",
    "user_id"=>"1",
    "project_id"=>"2",
})