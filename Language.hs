module Language (verbs,
                 nouns) where

import Tools


verbs :: [(Verb, Verb)]
verbs =
    [
        ("ir", "ir"),
        ("irme", "ir"),
        ("irse", "ir"),
        ("caminar", "ir"),
        ("correr", "ir"),
        ("dirigirse", "ir"),
        ("dirigirme", "ir"),

        ("dejar", "dejar"),
        ("dejarlo", "dejar"),
        ("ignorar", "dejar"),
        ("ignorarlo", "dejar"),

        ("usar", "usar"),

        ("disparar", "disparar"),
        ("matar", "disparar"),

        ("quitar", "quitar"),
        ("quitarme", "quitar"),
        ("quito", "quitar"),
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
        ("apuntarle", "amenazar"),

        ("contar", "contar"),
        ("contarle", "contar"),
        ("cuento", "contar"),
        ("decir", "contar"),
        ("decirle", "contar"),
        ("digo", "contar"),
        ("avisar", "contar"),
        ("aviso", "contar"),
        ("advertir", "contar"),
        ("advierto", "contar"),

        ("pagar", "pagar"),
        ("pago", "pagar"),
        ("pagarle", "pagar"),
        ("acepto", "pagar"),
        ("aceptar", "pagar"),
        ("dar", "pagar"),
        ("montar", "pagar"),
        ("montarme", "pagar"),

        ("salir", "salir")

        ("c", "c"),
        ("i", "i"),
        ("h", "h")
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

        ("perseguidores", "perseguidores"),
        ("secuestradores" , "perseguidores"),

        ("policia", "policia"),

        ("pistola", "pistola"),
        ("arma", "pistola"),

        ("placa", "placa"),

        ("coche", "coche"),
        ("carro", "coche"),

        ("puerta", "puerta")
    ]