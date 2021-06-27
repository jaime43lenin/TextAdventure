module Description (getSituation) where



getSituation :: String -> String

getSituation "0" =
    "Al caer la tarde estas llegando a casa cuando de repente se nubla tu vista, \n"
    ++"pierdes el control de tu cuerpo y todo lo que vez son destellos de luz ...."
getSituation "1" =
    "Recobras la conciencia y escuchas voces, te percatas que tienes las manos atadas\n"
    ++"y la cabeza tapada con una especie de saco negro\n"
    ++"El coche se detiene y te bajan a rastras, sientes frio y la hierba humeda en tus pies descalzos\n"
    ++"no tienes fuezas siquiera para hablar y no entiendes bien lo que hablan, logras identificar otro\n"
    ++"idioma pero no lo tines claro y te dejan tendido en el suelo.\n"
    ++"Sientes que las voces se alejan, escuchas un disparo...."
getSituation "2" =
    "Al quitarte el saco de la cabeza te percatas que estas en el interior de una habitacion\n"
    ++" logras recuperar casi completamente tus sentidos pudiendo ver que la puerta no tiene \n"
    ++"seguro y hay un gabetero detras tuyo"
getSituation "2.1" = 
    "Abres el gabetero encuentras ... " --un documento con todos tus datos firmado por el departamento de policia y 2 billetes de 20 dolares
getSituation "3" =
    "Logras abrir la puerta y te das cuenta que estas en una cabaña en una ladera de una montaña\n"
    ++"Miras a tu alrededor y puedes ver que esta atardeciendo, se puede ver a lo lejos una carretera\n"
    ++"y un impetuoso bosque que prescede a la cabaña pero antes de tomar cualquier decision....\n"
    ++"tienes a tus pies un cuerpo con un tiro en la sien\n"
getSituation "3.1" =
    "Al registrar el cuerpo encuentras ..." -- una pistola con 3 balas y una placa de inspector
getSituation "4" = 
    "En shock todavia pero con la vista clara llegas a la carretera y ves que esta al borde de la ladera\n"
    ++"Te recustas a la baranda para no caerte al vacio y recuperar fuerzas"
getSituation "5" = 
    "Llevas un rato ya caminando intentando bajar de la montaña cada vez con menos fuerzas....\n"
    ++ "se acerca un coche y al verte en se detiene....\n"
    ++ "El conductor un hombre no muy bien vestido con un tabaco en la boca y manos de mecanico te\n"
    ++ "ofrece llevarte al pueblo mas cercano por 40 dolares"
getSituation "6" =
    "Le pagas con los billetes que habias encontrado en la cabaña y t subes al auto\n"
    ++"El conductor te pregunta que hacias divagando por la carretera solo y cerca de \n"
    ++"la noche\n"
getSituation "7" = 
    "Tras contarle lo sucedido al conductor "