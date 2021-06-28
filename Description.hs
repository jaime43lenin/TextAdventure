module Description (getObjectsDescription,
                    getObjectHere,
                    getSituationDescription) where

import Tools


-- return the descriptions of the objects 
getObjectsDescription :: Object -> String
getObjectsDescription "documento" = "un documento con todos tus datos firmado por departamento de policía"
getObjectsDescription "billetes" = "2 billetes de 20 dolares"
getObjectsDescription "pistola" = "una pistola cargada con 3 balas"
getObjectsDescription "placa" = "una placa de inspector"


-- return the objects in a especific situation
getObjectHere :: SituationId -> ObjectMap -> String
getObjectHere situation objectsMap =
    let objectsHere = [getObjectsDescription obj | (obj, sit) <- objectsMap, sit == situacion]
    in intercalate ", " objectsHere


-- return the description of situations
getSituationDescription :: SituationId -> String
getSituationDescription "0" =
    "Al caer la tarde estas llegando a casa cuando de repente se nubla tu vista, \n"
    ++"pierdes el control de tu cuerpo y todo lo que vez son destellos de luz... \n"
getSituationDescription "1" =
    "Recobras la conciencia y escuchas voces, te percatas que tienes \n"
    ++"la cabeza tapada con una especie de saco negro y percibes que estas en un coche en movimiento... \n"
    ++"El coche se detiene y te bajan a rastras, sientes frío y la hierba húmeda en tus pies descalzos,\n"
    ++"No tienes fuerzas siquiera para hablar y no entiendes bien lo que hablan, logras identificar otro\n"
    ++"idioma pero no lo tienes claro y te dejan tendido en el suelo.\n"
    ++"Sientes que las voces se alejan, escuchas un disparo..."
getSituationDescription "2" =
    "Al quitarte el saco de la cabeza te percatas que estas en el interior de una habitación\n"
    ++"logras recuperar casi completamente tus sentidos pudiendo ver que la puerta no tiene \n"
    ++"seguro y que hay un gabetero detrás tuyo"
getSituationDescription "2.1" = 
    "Abres el gabetero y encuentras ... " --un documento con todos tus datos firmado por el departamento de policia y 2 billetes de 20 dolares
getSituationDescription "3" =
    "Logras abrir la puerta. Te das cuenta que estás en una cabaña en una ladera de una montaña\n"
    ++"Miras a tu alrededor y puedes ver que está atardeciendo, se puede ver a lo lejos una carretera.\n"
    ++"Un impetuoso bosque prescede a la cabaña pero antes de tomar cualquier decisión...\n"
    ++"tienes a tus pies un cuerpo con un tiro en la sien\n"
getSituationDescription "3.1" =
    "Al registrar el cuerpo encuentras ..." -- una pistola con 3 balas y una placa de inspector
getSituationDescription "4" = 
    "En shock todavía pero con la vista clara llegas a la carretera y ves que está al borde de la ladera\n"
    ++"Te recuestas a la baranda para no caerte al vacío y recuperar fuerzas"
getSituationDescription "5" = 
    "Llevas un rato ya caminando, intentando bajar de la montaña cada vez con menos fuerzas...\n"
    ++ "se acerca un coche y al verte en se detiene...\n"
    ++ "El conductor, un hombre no muy bien vestido con un tabaco en la boca y manos de mecánico, te\n"
    ++ "ofrece llevarte al pueblo más cercano por 40 dólares"
getSituationDescription "6" =
    "Le pagas con los billetes que habías encontrado en la cabaña y te subes al auto\n"
    ++"El conductor te pregunta que hacías divagando por la carretera solo y cerca de \n"
    ++"la noche\n"
getSituationDescription "7" = 
    "Tras contarle lo sucedido al conductor decide llevarte hasta tu casa con tu familia...\n"
    ++"Dada la longitud del recorrido paran en una gasolinera. Luego de reanudar el viaje te das cuenta que los\n"
    ++"están siguiendo en un auto"
getSituationDescription "8" =
    "El conductor decide acelerar y los que los persiguen comienzan a disparar"
getSituationDescription "9" = --Final
	"Logras en el último disparo herir al conductor del otro vehículo sacándolos así de la carretera\n"
	++"lo que les permite escapar.\n"
	++"Después de unas horas llegan a tu casa a salvo con tu familia"
getSituationDescription "10" = --Final
	"Entre los choques de la persecución y los disparos hieren al chofer del auto en el que vas saliendose\n"
	++"este de la carretera\n"
	++"Los que los persiguen se detienen y se acercan a ti herido por el accidente del coche y te dan un disparo\n"
	++"el la cabeza...\n"
getSituationDescription "11" = --Final
	"LLegas a casa seguido por otro coche, estos se bajan y reconoces una de las voces de los secuestradores dándote\n"
	++"cuenta que los habías llevado hasta donde estaba tu familia\n"
	++"Todos son asesinados en el interior de la casa\n"
getSituationDescription "12" = 
	"Se acerca un coche de policía. Este al verte se detiene se te acerca y te pregunta si eres de por aquí. Reconoces\n"
	++"la voz como uno de los secuestradores...\n"
getSituationDescription "13" = 
	"Logras acabar con el secuestrador ahora estás solo con un cadaver uniformado, un coche de policía\n"
getSituationDescription "14" = --Final
	"El secuestrador te atrapa nuevamente, esta vez te meten en el baúl del coche"
getSituationDescription "15" = --Final
	"Huyes en el coche de policía logrando llegar a salvo a casa"
getSituationDescription "16" = --Final
	"Mueres al caer la noche, estabas muy débil y los animales se adueñan de tu cuerpo"
getSituationDescription "17" =
	"La situación se pone tensa el conductor acelera y disparas hiriéndolo y al perder el control este cae por la ladera\n"
