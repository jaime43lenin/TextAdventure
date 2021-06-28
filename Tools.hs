module Tools (Status,
              Object,
              SituationId,
              ObjectMap,
              Description,
              ObjectDescriptions,
              Verb,
              Noun,
              Action,
              Response,
              World,
              objectsMap,
              getSituation,
              putSituation, 
              gameOver,
              execute
              ) where

import Data.List

type Status = String
type Object = String
type SituationId = String
type ObjectMap = [(Object, SituationId)]
type Description = String
type ObjectDescriptions = [(Object, Description)]
type Verb = String
type Noun = String           
type Action = ((Verb, Noun), String) -- the last argument represent an object that the player can use
type Response = String
type World = (SituationId, ObjectMap, Response)


-- map of the locations of each object in the world
objectsMap :: ObjectMap
objectsMap =
    [
        ("player", "alive"),
        ("documento", "2.1"),
        ("billetes", "2.1"),
        ("pistola", "3.1"),
        ("placa", "3.1")
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
gameOver objectsMap = True


-- execute an action
execute :: Action -> SituationId -> World
execute ((verb, noun), object) situation = ("", [], "")