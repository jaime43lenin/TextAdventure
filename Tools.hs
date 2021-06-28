module Tools (Object,
              SituationId,
              ObjectMap,
              Action,
              World,
              objectsMap,
              getSituation,
              putSituation
              ) where


type Status = String
type Object = String
type SituationId = String
type ObjectMap = [(Object, SituationId)]
type Verb = String
type Noun = String           
type Action = ((Verb, Noun), String) -- the last argument represent an object
type World = (SituationId, ObjectMap, Response)


-- map of the locations of each object in the world
objectsMap :: ObjectMap
objectsMap =
    [
        ("player", "alive"),
        ("documento", "gabetero"),
        ("billetes", "gabetero"),
        ("pistola", "cuerpo"),
        ("placa", "cuerpo")
    ]



-- get the location of an object
getSituation :: Object -> ObjectMap -> SituationId
getSituation object ((obj, sit):r) = 
    if object == obj
        then sit
        else getSituation object r 


-- change the location of an object
putSituation :: Object -> ObjectMap -> SituationId -> ObjectMap
putSituation object objectsMap situation = 
    let without = filter (\(x, y) -> x /= object) objectsMap
    in (object, situation) : without


-- game over
gameOver :: ObjectMap -> Bool
gameOver objectsMap =


-- execute an action
execute :: Action -> SituationId -> World
execute ((verb, noun), object) situation =