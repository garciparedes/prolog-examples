/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 5:
    Ejercicio 1

Dominio:
    Personas

Funciones:
    inteligente(X)      X es inteligente
    enseña(X, Y)        X enseña Y
    esDe(X, Y)          X es de Y

Pregunta:
    inteligente(X).
*/

ensena(juan, algoritmos).

ensena(mujerDeJuan, inteligenciaArtificial).

esDe(algoritmos, matematicas).

esDe(inteligenciaArtificial, informatica).

inteligente(X) :- ensena(X, Y), esDe(Y, informatica).
