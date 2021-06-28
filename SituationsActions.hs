module SituationsActions (executeAction) where

import Description

executeAction :: SituationId -> Action -> ObjectMap -> World
executeAction "1" (("quitar", "saco"), "") objectsMap = 
    ("2", objectsMap, getSituationDescription "2")

executeAction "1" _ objectsMap =
    ("1", objectsMap, "No puedes ver nada, tienes la cabeza cubierta con un saco")

executeAction "2" (("inspeccionar", "gabetero"), "") objectsMap = 
    ("3", objectsMap, )