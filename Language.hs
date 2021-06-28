module Language (verbs,
                 nouns) where

import Tools


verbs :: [(Verb, Verb)]
verbs =
    [
        ("c", "c"),
        ("i", "i"),
        ("h", "h"),
        ("ir", "ir"),
        ("caminar", "ir"),
        ("dejar", "dejar"),
        ("disparar", "disparar"),
        ("matar", "disparar"),
        ("quitar", "quitar"),
        ("huir", "huir"),
        ("tomar", "tomar"),
        ("inspeccionar", "inspeccionar"),
        ("esperar", "esperar"),
        ("amenazar", "amenazar"),
        ("contar", "contar")
    ]


nouns :: [(Noun, Noun)]
nouns =
    [
        ("saco", "saco"),
        ("gabetero", "gabetero"),
        ("cabaña", "cabaña"),
        ("documento", "documento"),
        ("billetes", "billetes"),
        ("objetos", "objetos"),
        ("cuerpo", "cuerpo"),
        ("carretera", "carretera"),
        ("pistola", "pistola"),
        ("placa", "placa"),
        ("conductor", "conductor"),
        ("perseguidores", "perseguidores"),
        ("coche", "coche")
    ]