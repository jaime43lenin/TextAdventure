
module Actions (takeObject,
                dropObject,
                useObject,
                moveTo) where

import Tools


-- the player take an object
takeObject :: Object -> ObjectMap -> SituationId -> World
takeObject object objectsMap situation = 
    let playerSituation = getSituation "player" objectsMap
        objectSituation = getSituation object objectsMap
    in if playerSituation == objectSituation
        then (situation, (putSituation object objectsMap "inventory"), "Has agregado el objeto a tu inventario")
        else 
            if objectSituation == "inventory"
                then (situation, objectsMap, "Ya tienes ese objeto en el inventario")
                else (situation, objectsMap, "Mmmm... ese objeto no está aquí")


-- the player drop an object
dropObject :: Object -> ObjectMap -> SituationId -> World
dropObject object objectsMap situation = 
    let playerSituation = getSituation "player" objectsMap
        objectSituation = getSituation object objectsMap
    in if objectSituation == "inventory"
        then (situation, (putSituation object objectsMap playerSituation), "Entendido. Has soltado el objeto")
        else (situation, objectsMap, "Upss... no tienes este objeto")


-- the player attack 
attack :: 


-- the player use de object in the inventory
useObject :: Object -> Noun -> ObjectMap -> SituationId -> World
useObject object against objectsMap situation = 


-- the player move to another situation
moveTo :: Object -> ObjectMap -> SituationId -> World
moveTo object objectsMap situation = 