module SituationsActions (executeAction) where

import Description
import Tools


executeAction :: SituationId -> Action -> ObjectMap -> World
executeAction "1" (("quitar", "saco"), "") objectsMap = ("2", objectsMap, getSituationDescription "2")
executeAction "1" _ objectsMap = ("1", objectsMap, "No puedes ver nada, tienes la cabeza cubierta con un saco")

executeAction "2" (("inspeccionar", "gabetero"), "") objectsMap = 
executeAction "2" (("salir", "cabaña"), "") objectsMap = ("3", objectsMap, (getSituationDescription "3"))
executeAction "2" _ objectsMap =

executeAction "2.1" (("tomar", "documento"), "") objectsMap =
executeAction "2.1" (("tomar"), "billetes", "") objectsMap =
executeAction "2.1" (("tomar"), "objetos", "") objectsMap =
executeAction "2.1" _ objectsMap =

executeAction "3" (("inspeccionar","cuerpo"), "") objectsMap =
executeAction "3" (("ir", "carretera"), "") objectsMap =
executeAction "3" _ objectsMap =

executeAction "3.1" (("tomar"), "pistola", "") objectsMap =
executeAction "3.1" (("tomar"), "placa", "") objectsMap =
executeAction "3.1" (("tomar"), "objetos", "") objectsMap =
executeAction "3.1" _ objectsMap =

executeAction "4" (("caminar", "carretera"), "") objectsMap =
executeAction "4" (("esperar", _), "") objectsMap =
executeAction "4" _ objectsMap =

executeAction "5" (("pagar", "conductor"), "billetes") objectsMap = 
executeAction "5" (("amenazar", "conductor"), "pistola") objectsMap =
executeAction "5" (("dejar ir", "conductor"), "") objectsMap =
executeAction "5" _ objectsMap =

executeAction "6" (("contarle", "conductor"), "") objectsMap =
executeAction "6" _ objectsMap =

executeAction "7" (("contarle", "conductor"), "") objectsMap =
executeAction "7" _ objectsMap =

executeAction "8" (("disparar", "enemigo"), "pistola") objectsMap =
executeAction "8" _ objectsMap = 

executeAction "9" _ objectsMap =
executeAction "10" _ objectsMap =
executeAction "11" _ objectsMap =

executeAction "12" (("matar", "secuetrador"), "pistola") objectsMap =
executeAction "12" _ objectsMap =

executeAction "13" (("huir", "coche"), "") objectsMap =
executeAction "13" _ objectsMap =

executeAction "14" _ objectsMap = 
executeAction "15" _ objectsMap =
executeAction "16" _ objectsMap =

executeAction "17" (("esperar", "carretara"), "") objectsMap =
executeAction "17" (("caminar", "carretera"), "") objectsMap =