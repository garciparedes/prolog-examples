/*

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

enseña(juan, algoritmos).

enseña(mujerDeJuan, inteligenciaArtificial).

esDe(algoritmos, matematicas).

esDe(inteligenciaArtificial, informatica).

inteligente(X) :- enseña(X, Y), esDe(Y, informatica).
