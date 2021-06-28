import System.IO

import Commands
import Tools
import Parser
import Language
import SituationsActions
import Description


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
    | verb == "c" = (situation, objectsMap, getCommands)
    | verb == "i" = (situation, objectsMap, getInventory objectsMap)
    | verb == "h" = (situation, objectsMap, getHelp)
    | otherwise = executeAction situation ((verb, noun), object) objectsMap


play :: World -> IO (World)
play (situation, objectsMap, response) = do
    putStrLn response
    putStr "\n"
    if gameOver situation
        then return ("", [], "")
        else do
            putStr ">> "
            input <- getLine
            if input == "s"
                then return (situation, objectsMap, "Hasta Pronto!!!")
                else play (execute (parser input objectsMap verbs nouns) situation objectsMap)

            --action <- parser input objectsMap verbs nouns
            --world <- execute action situation objectsMap
            --play $ return world


-- Start
main :: IO (World)
main = do
    printIntro
    putStr "Comencemos..."
    putStrLn ("Estos comandos son comandos que puedes usar")
    putStrLn getCommands
    putStr "Presiona Enter para continuar..."
    getLine
    play ("1", objectsMap, (getSituationDescription "0") ++ (getSituationDescription "1"))