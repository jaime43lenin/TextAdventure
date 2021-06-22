

module Tools (Player,
              Object,
              Location,
              ObjectMap,
              objectsMap
              ) where

type Player = (String, [String])
type Object = String
type Location = String
type ObjectMap = [(Object, Location)]


objectsMap :: ObjectMap
objectsMap =
    [

    ]


getLocation
putLocation