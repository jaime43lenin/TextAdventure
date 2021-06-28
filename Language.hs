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

        ("usar", "usar"),

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
        ("revisar", "inspeccionar"),

        ("esperar", "esperar"),

        ("amenazar", "amenazar"),
        ("intimidar", "amenazar"),

        ("contar", "contar"),
        ("contarle", "contar"),
        ("decir", "contar"),
        ("decirle", "contar"),

        ("pagar", "pagar"),
        ("pago", "pagar"),
        ("acepto", "pagar"),
        ("aceptar", "pagar"),
        ("dar", "pagar"),
        ("montar", "pagar"),
        ("montarme", "pagar"),

        ("salir", "salir")
    ]


nouns :: [(Noun, Noun)]
nouns =
    [
        ("saco", "saco"),

        ("gavetero", "gavetero"),
        ("gavetas", "gavetero"),

        ("cabaña", "cabaña"),
        ("cabana", "cabaña"),
        ("habitacion", "cabaña"),
        ("habitación", "cabaña"),

        ("documento", "documento"),
        ("papel", "documento"),

        ("conductor", "conductor"),
        ("chofer", "conductor"),
        ("mecánico", "conductor"),

        ("billetes", "billetes"),
        ("dinero", "billetes"),

        ("cuerpo", "cuerpo"),
        ("cadaver", "cuerpo"),
        ("muerto", "muerto"),

        ("carretera", "carretera"),

        ("pistola", "pistola"),
        ("arma", "pistola"),

        ("placa", "placa"),


        ("perseguidores", "perseguidores"),
        ("secuestradores" , "perseguidores"),

        ("coche", "coche"),
        ("carro", "coche")
    ]