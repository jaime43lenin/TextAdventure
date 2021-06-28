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


-- the player use de object in the inventory
useObject :: Object -> Noun -> ObjectMap -> SituationId -> World
useObject "billetes" "conductor" objectsMap "5" = 
    ("6", (putSituation "billetes" objectsMap "useless"), (getSituationDescription "6"))
useObject "pistola" "conductor" objectsMap situation = ("17", objectsMap, (getSituationDescription "17"))
useObject "pistola" "policia" objectsMap situation = ("13", objectsMap, (getSituationDescription "13"))
useObject "pistola" "perseguidores" objectsMap situacion = ("9", objectsMap, (getSituationDescription "9"))
useObject _ _ objectsMap situation = (situation, objectsMap, "No puedes usar ese objeto para eso")


-- the player move to another situation
moveTo :: SituationId -> String -> ObjectMap -> World
moveTo "2" "puerta" objectsMap = ("3", objectsMap, (getSituationDescription "3"))
moveTo "2.1" "puerta" objectsMap = ("3", objectsMap, (getSituationDescription "3"))
moveTo "3" "carrtera" objectsMap = ("4", objectsMap, (getSituationDescription "4"))
