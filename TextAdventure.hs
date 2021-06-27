import System.IO

import Commands
import Tools


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

play :: IO (World)
play = do
    if gameOver objectsMap  -- hacer gameOver
        then return ()
        else do
            putStr "comando>"
            input <- getLine




-- Start
main :: IO (World)
main = do
    printIntro
    putStr "Comencemos...\n"
    putStrLn "Hola, qué nombre le gustaría poner a su personaje"
    name <- getLine
    putStrLn ("\nBueno " ++ name ++ " estos comandos son comandos que puedes usar")
    getCommands
    putStr "Presiona Enter para continuar..."
    getLine
    play
    return ()  