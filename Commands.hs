module Commands (getCommands,
                 getInventory,
                 getHelp,
                 quit,
                 ) where

import Tools


getCommands :: String
getCommands = "Comandos \n"
              ++"-c           -- comandos \n"
              ++"-i           -- inventario \n"
              ++"-h           -- ayuda \n"       
              ++"-s           -- salir del juego\n"


getInventory :: ObjectMap -> String
getInventory objectsMap = 
    let player_objects = [object | (object, "inventory") <- objectsMap]
    in if player_objects == []
        then ("Inventario\n" ++ "-----------\n" ++ "El inventario está vacío")
        else ("Inventario\n" ++ "-----------\n" ++ (unlines (map (++"\n") player_objects)))


getHelp :: String
getHelp = "Utiliza oraciones simples describiendo la acción que deseas realizar según \n"
           ++"la situación.\n"
           ++"Todo lo que escribas debe estar en minúsculas y ser lo más claro posible en tus ideas. Trata\n"
           ++"de mencionar el sujeto (sustantivo) al cual va dirigido la accion que realices\n"
           ++"Ejemplo -- caminar a la puerta\n"
           ++"           salir de la habitacion" 


quit :: String
quit = "Hasta Pronto!!!"