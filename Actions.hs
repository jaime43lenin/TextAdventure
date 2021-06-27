
module Actions () where

import Tools



takeObject :: Object -> ObjectMap -> IO ()
takeObject object objectsMap = 
    let playerSituation = getSituation "player" objectsMap
        objectSituation = getSituation object objectsMap
    in if playerSituation == objectSituation
        then do
            putSituation object objectsMap "inventory"
            putStrLn "Has agregado este objeto a tu inventario"
        else 
            if objectSituation == "inventory"
                then putStrLn "Ya tienes ese objeto en el inventario"
                else putStrLn "Mmmm... ese objeto no está aquí"


useObject :: Object -> ObjectMap -> IO ()


moveTo :: Player -> IO()
    