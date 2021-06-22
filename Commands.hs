
module Commands (getCommands,
                 getInventory,
                 ) where

import Tools
import System.IO


getCommands :: IO ()
getCommands = 
    putStrLn $ unlines ["Comandos",
                        "jugar       -- comenzar el juego",
                        "c           -- comandos",
                        "i           -- inventario",
                        "h           -- ayuda",       
                        "salir       -- salir del juego\n"]


getInventory :: ObjectMap -> IO ()
getInventory objectsMap = 
    let player_objects = [object | (object, "inventory") <- objectsMap]
    in if player_objects == []
        then putStrLn ("Inventario\n" ++ "-----------\n" ++ "El inventario está vacío")
        else putStrLn ("Inventario\n" ++ "-----------\n" ++ (unlines (map (++"\n") player_objects)))


getHelp :: IO ()
getHelp = 
    putStrLn $ unlines []
