module Parser (parser) where

import Language
import Tools
import Data.List


-- get the verb in the player input
getVerb :: [String] -> [(Verb, Verb)] -> Verb 
getVerb input ((inp, verb):r) =
    if inp `elem` input
        then verb
        else getVerb input r


-- get the noun in the player input
getNoun :: [String] -> [(Noun, Noun)] -> Noun
getNoun input ((inp, noun):r) =
    if inp `elem` input
        then noun
        else getNoun input r


-- get the object in the player input
getObject :: [String] -> [String] -> String
getObject input (object:r) =
    if object `elem` input
        then object
        else getObject input r

    
-- parse the player input into an Action
parser :: String -> ObjectMap -> [(Verb, Verb)] -> [(Noun, Noun)] -> Action
parser line objectsMap verbs nouns =
    let command = words line
        objects = [obj | (obj, situation) <- objectsMap]
    in ((getVerb command verbs, getNoun command nouns), getObject command objects)