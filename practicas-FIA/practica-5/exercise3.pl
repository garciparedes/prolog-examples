/*

Practicas Prolog FIA:

Practica 5:
    Ejercicio 3

Dominio:
    Personas

Funciones:
    tieneElPelo(X, Y)       X tiene el pelo Y
    esElPadreDe(X, Y)       X es el padre de Y
    esElHijoDe(X, Y)        X es el hijo de Y
    esElAbueloDe(X, Y)      X es el abuelo de Y

Pregunta:
    esElAbueloDe(X, Z), tieneElPelo(X, rubio).
*/

tieneElPelo(marcos, rubio).

tieneElPelo(juan, moreno).

esElPadreDe(pedro, juan).

esElPadreDe(marcos, pedro).

esElPadreDe(juan, ramon).

esElPadreDe(X, Y) :- esElHijoDe(Y, X).

esElAbueloDe(X, Z) :- esElPadreDe(X, Y), esElPadreDe(Y, Z).

esElHijoDe(marcos, jorge).
