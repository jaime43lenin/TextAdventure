

module Tools (Player,
              Object,
              Situation,
              ObjectMap,
              objectsMap
              ) where

type Player = (String, [String])
type Object = String
type SituationId = String
type ObjectMap = [(Object, SituationId)]
type PathMap = [((Situation, String), Situation)]
type Verb = String
type Noun = String
type Action = ((Verb, Noun), Object)
type Config = (Situation, ObjectMap, Action, Response)


objectsMap :: ObjectMap
objectsMap =
    [

    ]

getSituation :: Object -> ObjectMap -> Situation
getSituation object [] = "0"
getSituation object ((obj, sit):r) = 
    if object == obj
        then sit
        else getSituation object r 


putSituation :: Object -> ObjectMap -> Situation -> String
putSituation object objectMap situation = 