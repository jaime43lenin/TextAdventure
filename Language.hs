module Language (verbs,
                 nouns) where

import Tools


verbs :: [(Verb, Verb)]
verbs =
    [
        ("dejar ir", "dejar ir"),
        ("dejarlo", "dejar ir"),
        ("dejo", "dejar ir"),
        ("ignorar", "dejar ir"),
        ("ignoro", "ignorar"),
        ("ignorarlo", "dejar ir"),

        ("usar", "usar"),
        ("uso", "uso"),

        ("disparar", "disparar"),
        ("disparo", "disparar"),
        ("matar", "disparar"),
        ("mato", "disparar"),
        ("atacar", "disparar"),
        ("ataco", "disparar"),

        ("quitar", "quitar"),
        ("quitarme", "quitar"),
        ("quito", "quitar"),
        ("me quito", "quitar"),
        ("deshacerme", "quitar"),
        ("librarme", "quitar"),

        ("huir", "huir"),
        ("huyo", "huir"),
        ("escapar", "huir"),
        ("escapo", "huir"),

        ("tomar", "tomar"),
        ("tomo", "tomar"),
        ("coger", "tomar"),
        ("cojo", "tomar"),
        ("agarrar", "tomar"),
        ("agarro", "tomar"),

        ("inspeccionar", "inspeccionar"),
        ("inspecciono", "inspeccionar"),
        ("investigar", "inspeccionar"),
        ("investigo", "inspecccionar"),
        ("ver", "inspeccionar"),
        ("veo", "inspeccionar"),
        ("registrar", "inspeccionar"),
        ("registro", "inspeccionar"),
        ("abrir", "inspeccionar"),
        ("abro", "inspeccionar"),
        ("revisar", "inspeccionar"),
        ("reviso", "inspeccionar"),

        ("esperar", "esperar"),
        ("espero", "esperar"),

        ("amenazar", "amenazar"),
        ("amenazo", "amenazar"),
        ("intimidar", "amenazar"),
        ("apuntarle", "amenazar"),
        ("apunto", "amenazar"),

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
        ("doy", "pagar"),
        ("montar", "pagar"),
        ("monto", "pagar"),
        ("montarme", "pagar"),

        ("salir", "salir"),
        ("salgo", "salir"),

        ("ir", "ir"),
        ("irme", "ir"),
        ("irse", "ir"),
        ("caminar", "ir"),
        ("camino", "ir"),
        ("correr", "ir"),
        ("corro", "ir"),
        ("dirigirse", "ir"),
        ("dirigirme", "ir"),
        ("voy", "ir"),

        ("-c", "c"),
        ("-i", "i"),
        ("-h", "h")
    ]


nouns :: [(Noun, Noun)]
nouns =
    [
        ("saco", "saco"),

        ("gavetero", "gavetero"),
        ("gavetas", "gavetero"),
        ("gaveta", "gavetero"),

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
        ("dolares", "billetes"),
        ("dólares", "billetes"),

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

        ("puerta", "puerta"),
        ("todo", "todo")
    ]