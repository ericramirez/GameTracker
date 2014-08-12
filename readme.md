

Modelos de la app :

Juego (Modelo)

    fecha programada para comenzar
    fecha que comenzo
    fecha que termino

    equipo Local -> (Referencia a modelo Equipo)
    equipo Visitante -> (Referencia a modelo Equipo)

    jugadas -> ( Arreglo de Jugada ( referencia al modelo Jugada ) ) 

    metodos:

        get LocalScore()
        get VisitanteScore()



Equipo (Modelo)
    
    nombre
    jugadores -> ( Arreglo de Jugador ( referencia la modelo Jugador ) )


Jugador (Modelo)
    Nombre

    jugadas -> ( Arreglo de Jugada )


Jugada (Modelo)
    
    // Hay que ver


URLS

/games -> Listing de todos los juegos

/games/(game_id) -> Ver stats de un juego en especifico

/games/new -> Pa crear un juego



    