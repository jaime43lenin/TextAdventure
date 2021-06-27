
module Commands (getCommands,
                 getInventory,
                 getHelp,
                 quit,
                 ) where

import Tools
import System.IO


getCommands :: IO ()
getCommands = 
    putStrLn $ unlines ["Comandos",
                        "c           -- comandos",
                        "i           -- inventario",
                        "h           -- ayuda",       
                        "salir       -- salir del juego"]


getInventory :: ObjectMap -> IO ()
getInventory objectsMap = 
    let player_objects = [object | (object, "inventory") <- objectsMap]
    in if player_objects == []
        then putStrLn ("Inventario\n" ++ "-----------\n" ++ "El inventario está vacío")
        else putStrLn ("Inventario\n" ++ "-----------\n" ++ (unlines (map (++"\n") player_objects)))


getHelp :: IO ()
getHelp = 
    putStrLn $ unlines ["Utiliza oraciones simples describiendo la acción que deseas realizar según ",
                        "la situación",
                        "Ejemplo -- "]   -- actualizaaaaaaaaaaar


quit :: IO ()
quit = 
    putStrLn "Hasta Pronto!!!"
    return ()