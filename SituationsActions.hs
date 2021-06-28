module SituationsActions (executeAction) where

import Description
import Tools
import Actions


executeAction :: SituationId -> Action -> ObjectMap -> World
executeAction "1" (("quitar", "saco"), _) objectsMap = ("2", objectsMap, getSituationDescription "2")
executeAction "1" _ objectsMap = ("1", objectsMap, "No puedes ver nada, tienes la cabeza cubierta con un saco")

executeAction "2" (("inspeccionar", "gavetero"), _) objectsMap = inspectObject "2" objectsMap
executeAction "2" (("salir", "cabaña"), _) objectsMap = ("3", objectsMap, (getSituationDescription "3"))
executeAction "2" (("inspeccionar", "cabaña"), _) objectsMap = ("2", objectsMap, "Parece que no hay más nada interesante en esta habitación")
executeAction "2" _ objectsMap = ("2", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "2.1" (("tomar", "documento"), _) objectsMap = takeObject "documento" objectsMap "2.1"
executeAction "2.1" (("tomar", "billetes"), _) objectsMap = takeObject "billetes" objectsMap "2.1"
--executeAction "2.1" (("tomar", "objetos"), "") objectsMap = 
  --  let (_, objectsMap_1, _) = takeObject "documento" objectsMap "2.1"
    --    world = takeObject "billetes" objectsMap_1 "2.1"
    --in world
executeAction "2.1" (("salir", "cabaña"), _) objectsMap = ("3", objectsMap, (getSituationDescription "3"))
executeAction "2.1" _ objectsMap = ("2.1", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "3" (("inspeccionar","cuerpo"), _) objectsMap = inspectObject "3" objectsMap
executeAction "3" (("ir", "carretera"), _) objectsMap = moveTo "3" "carretera" objectsMap
executeAction "3" _ objectsMap = ("3", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "3.1" (("tomar", "pistola"), _) objectsMap = takeObject "pistola" objectsMap "3.1"
executeAction "3.1" (("tomar", "placa"), _) objectsMap = takeObject "placa" objectsMap "3.1"
--executeAction "3.1" (("tomar", "objetos"), "") objectsMap =
  --  let (_, objectsMap_1, _) = takeObject "pistola" objectsMap "3.1"
    --    world = takeObject "placa" objectsMap_1 "3.1"
    --in world
executeAction "3.1" (("ir", "carretera"), _) objectsMap = moveTo "3" "carretera" objectsMap
executeAction "3.1" _ objectsMap = ("3.1", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "4" (("ir", "carretera"), _) objectsMap = moveTo "4" "carretera" objectsMap
executeAction "4" (("esperar", _), _) objectsMap = ("12", objectsMap, (getSituationDescription "12"))
executeAction "4" _ objectsMap = ("4", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "5" (("pagar", "conductor"), "billetes") objectsMap = useObject "billetes" "conductor" objectsMap "5"
executeAction "5" (("amenazar", "conductor"), "pistola") objectsMap = useObject "pistola" "conductor" objectsMap "5"
executeAction "5" (("dejar", "conductor"), _) objectsMap = ("12", objectsMap, (getSituationDescription "12"))
executeAction "5" _ objectsMap = ("5", objectsMap,"Esa acción no tiene efecto")

executeAction "6" (("contar", "conductor"), _) objectsMap = ("7", objectsMap, (getSituationDescription "7"))
executeAction "6" _ objectsMap = ("6", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "7" (("contar", "conductor"), _) objectsMap = ("8", objectsMap, (getSituationDescription "8"))
executeAction "7" _ objectsMap = ("7", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "8" (("disparar", "perseguidores"), "pistola") objectsMap = useObject "pistola" "perseguidores" objectsMap "8"
executeAction "8" _ objectsMap = ("8", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "9" _ objectsMap = ("9", objectsMap, "Fin")
executeAction "10" _ objectsMap = ("10", objectsMap, "Fin")
executeAction "11" _ objectsMap = ("11", objectsMap, "Fin")

executeAction "12" (("disparar", "policia"), "pistola") objectsMap = useObject "pistola" "policia" objectsMap "12"
executeAction "12" _ objectsMap = ("12", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "13" (("huir", "coche"), "") objectsMap = ("15", objectsMap, (getSituationDescription "15"))
executeAction "13" _ objectsMap = ("13", objectsMap, "Esa acción no tiene ningún efecto")

executeAction "14" _ objectsMap = ("14", objectsMap, "Fin")
executeAction "15" _ objectsMap = ("15", objectsMap, "Fin")
executeAction "16" _ objectsMap = ("16", objectsMap, "Fin")

executeAction "17" (("esperar", "carretera"), _) objectsMap = ("12", objectsMap, (getSituationDescription "12"))
executeAction "17" (("ir", "carretera"), _) objectsMap = ("12", objectsMap, (getSituationDescription "12"))
executeAction "17" _ objectsMap = ("17", objectsMap, "Esa acción no tiene ningún efecto")