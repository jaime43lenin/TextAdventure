
module Actions (takeObject) where

import Tools



takeObject :: Object -> ObjectMap -> IO ()
takeObject object objectsMap = 
    let playerLocation = getLocation "player" objectsMap
        objectLocation = getLocation object objectsMap
    in if playerLocation == objectLocation
        then do
            putLocation object objectsMap "inventory"
            putStrLn "Has agregado este objeto a tu inventario"
        else 
            if objectLocation == "inventory"
                then putStrLn "Ya tienes ese objeto en el inventario"
                else putStrLn "Mmmm... ese objeto no está aquí"


useObject :: Object -> ObjectMap -> IO ()
useObject object objectsMap =
    