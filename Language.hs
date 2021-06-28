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
        ("correr", "ir"),

        ("dejar", "dejar"),
        ("ignorar", "dejar"),

        ("disparar", "disparar"),
        ("matar", "disparar"),

        ("quitar", "quitar"),
        ("deshacerme", "quitar"),
        ("librarme", "quitar"),

        ("huir", "huir"),
        ("escapar", "huir"),

        ("tomar", "tomar"),
        ("coger", "tomar"),

        ("inspeccionar", "inspeccionar"),
        ("investigar", "inspeccionar"),
        ("ver", "inspeccionar"),
        ("registrar", "inspeccionar"),
        ("abrir", "inspeccionar"),

        ("esperar", "esperar"),

        ("amenazar", "amenazar"),
        ("intimidar", "amenazar"),

        ("contar", "contar"),
        ("contarle", "contar"),
        ("decir", "contar"),
        ("decirle", "contar"),

        ("salir", "salir")
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