

module Tools (Player,
              Object,
              Situation,
              ObjectMap,
              objectsMap
              ) where


type Status = String
type Object = (String, Status)
type SituationId = String
type ObjectMap = [(Object, SituationId)]
type PathMap = [((SituationId, String), SituationId)]
type Verb = String
type Noun = String
type Action = ((Verb, Noun), Object)
type World = (SituationId, ObjectMap, Response)


-- map of the locations of each object in the world
objectsMap :: ObjectMap
objectsMap =
    [

    ]


-- map of possible paths in the world
pathsMap :: PathMap
pathsMap =
    [

    ]


-- get the location of an object
getSituation :: Object -> ObjectMap -> Situation
getSituation object [] = "0"
getSituation object ((obj, sit):r) = 
    if object == obj
        then sit
        else getSituation object r 


-- change the location of an object
putSituation :: Object -> ObjectMap -> Situation -> ObjectMap
putSituation object objectsMap situation = 
    let without = filter (/(x, y) -> x /= object) objectsMap
    in (object, situation) : without