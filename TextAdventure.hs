import System.IO

import Commands
import Tools
import Parser
import Language
import SituationsActions


-- Introduction of textAdveture
printIntro :: IO ()
printIntro = 
    putStrLn $ unlines ["\nBienvenid@ a este Text Adventure.\n",
                        "Que no sabes que es un Text Adventure?",
                        "Pues es un juego completamente basado en texto donde se presenta progresivamente",
                        "una historia que gira alrededor de un personaje, casi siempre ficticia, y el jugador",
                        "está involucrado en la construcción de la misma. Dada una configuración del mundo del",
                        "juego el jugador deberá decidir como continúa la historia introduciendo oraciones que",
                        "describan una acción que el personaje debe realizar hasta llegar al final de la historia"]

-- game over
gameOver :: SituationId -> Bool
gameOver situacion = 
    situacion == "9" || situacion == "10" || situacion == "11" || situacion == "14" || situacion == "15" || situacion == "16"


-- execute an action
execute :: Action -> SituationId -> ObjectMap -> World
execute ((verb, noun), object) situation objectsMap
    | verb == "c" = (situacion, objectsMap, getCommands)
    | verb == "i" = (situacion, objectsMap, getInventory)
    | verb == "h" = (situacion, objectsMap, getHelp)
    | otherwise = executeAction situacion ((verb, noun), object) objectsMap


play :: IO (World) -> IO (World)
play (situation, objectsMap, response) = do
    putStrLn response
    putStrLn "\n"
    if gameOver objectsMap  -- hacer gameOver
        then return ("", [], "")
        else do
            putStr ">> "
            input <- getLine
            action <- parser input objectsMap verbs nouns
            world <- execute action situation objectsMap
            play world


-- Start
main :: IO (World)
main = do
    printIntro
    putStr "Comencemos...\n"
    putStrLn ("\nEstos comandos son comandos que puedes usar")
    getCommands
    putStr "Presiona Enter para continuar..."
    getLine
    play ("1", objectsMap, (getSituationDescription "0") ++ (getSituationDescription "1"))
    return ("", [], "")  