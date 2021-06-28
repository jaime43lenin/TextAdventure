module Description (getSituationDescription) where

import Tools


getObjectDescription :: ObjectMap -> SituationId -> String
getObjectDescription objectsMap situation =
    let objectsHere = filter (\(x, y) -> y == situation) objectsMap
    in 



getSituationDescription :: SituationId -> String
getSituationDescription "0" =
    "Al caer la tarde estas llegando a casa cuando de repente se nubla tu vista, \n"
    ++"pierdes el control de tu cuerpo y todo lo que vez son destellos de luz ...."
getSituationDescription "1" =
    "Recobras la conciencia y escuchas voces, te percatas que tienes las manos atadas\n"
    ++"y la cabeza tapada con una especie de saco negro\n"
    ++"El coche se detiene y te bajan a rastras, sientes frio y la hierba humeda en tus pies descalzos\n"
    ++"no tienes fuezas siquiera para hablar y no entiendes bien lo que hablan, logras identificar otro\n"
    ++"idioma pero no lo tines claro y te dejan tendido en el suelo.\n"
    ++"Sientes que las voces se alejan, escuchas un disparo...."
getSituationDescription "2" =
    "Al quitarte el saco de la cabeza te percatas que estas en el interior de una habitacion\n"
    ++" logras recuperar casi completamente tus sentidos pudiendo ver que la puerta no tiene \n"
    ++"seguro y hay un gabetero detras tuyo"
getSituationDescription "2.1" = 
    "Abres el gabetero encuentras ... " --un documento con todos tus datos firmado por el departamento de policia y 2 billetes de 20 dolares
getSituationDescription "3" =
    "Logras abrir la puerta y te das cuenta que estas en una cabaña en una ladera de una montaña\n"
    ++"Miras a tu alrededor y puedes ver que esta atardeciendo, se puede ver a lo lejos una carretera\n"
    ++"y un impetuoso bosque que prescede a la cabaña pero antes de tomar cualquier decision....\n"
    ++"tienes a tus pies un cuerpo con un tiro en la sien\n"
getSituationDescription "3.1" =
    "Al registrar el cuerpo encuentras ..." -- una pistola con 3 balas y una placa de inspector
getSituationDescription "4" = 
    "En shock todavia pero con la vista clara llegas a la carretera y ves que esta al borde de la ladera\n"
    ++"Te recustas a la baranda para no caerte al vacio y recuperar fuerzas"
getSituationDescription "5" = 
    "Llevas un rato ya caminando intentando bajar de la montaña cada vez con menos fuerzas....\n"
    ++ "se acerca un coche y al verte en se detiene....\n"
    ++ "El conductor un hombre no muy bien vestido con un tabaco en la boca y manos de mecanico te\n"
    ++ "ofrece llevarte al pueblo mas cercano por 40 dolares"
getSituationDescription "6" =
    "Le pagas con los billetes que habias encontrado en la cabaña y t subes al auto\n"
    ++"El conductor te pregunta que hacias divagando por la carretera solo y cerca de \n"
    ++"la noche\n"
getSituationDescription "7" = 
    "Tras contarle lo sucedido al conductor este decide llevarte hasta tu casa con tu familia...\n"
    ++"Dadala longitud del paran en una gasolinera. Luego de reanudar el viaje te das cuenta que los\n"
    ++"estan siguiendo"
getSituationDescription "8" =
    "El conductor decide acelerar y los que los persiguen comienzan a disparar"
getSituationDescription "9" = --Final
	"Logras en el ultimo disparo herir al conductor del otro vehiculo sacandolos asi de la carretera\n"
	++"lo que les permite escapar\n"
	++"Despues de unas horas llegan a tu casa a salvo con tu familia"
getSituationDescription "16" = --FInal
	"Entre los choques de la persecucion y los disparos hieren al chofer del auto en el que vas saliendose\n"
	++"este de la carretera\n"
	++"Los que los persiguen se detienen y se acercan a ti herido por el accidente del coche y te dan un disparo\n"
	++"el la cabeza.....\n"
getSituationDescription "10" = 
	"LLegas a casa seguido por otro coche, estes se bajan y reconoces una de las voces de los secuestradores dandote\n"
	++"cuenta que los habias llevado hasta donde estaba tu familia\n"
	++"Todos son asesinados en el interior de la casa\n"
getSituationDescription "11" = 
	"Se acerca un coche de policia. Este al verte se detiene se t acerca y te pregunta si eres de por aqui. Reconoces\n"
	++"la voz como uno de los secuestradores ....\n"
getSituationDescription "12" = 
	"Logras acabar con el secuestrador ahora estas solo con un cadaver uniformado, un coche de policia\n"
getSituationDescription "13" = --Final
	"El secuestrador te atrapa nuevamente, esta vez te meten en el baul del coche"
getSituationDescription "14" = --Final
	"Huyes en el coche de policia logrando llegar a salvo a casa"
getSituationDescription "15" = 
	"Mueres al caer la noche estabas muy debil y los animales se adueñan de tu cuerpo"
getSituationDescription "16" =
	"La situacion se pone tensa el conductor acelera y disparas hiriendolo y al perder el control este cae por la ladera\n"
