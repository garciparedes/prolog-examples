/*

Practicas Prolog FIA:

Practica 5:
    Ejercicio 4

Dominio:
    Comida      X
    Personas    Y
    Cosa        Z

Funciones:
    leGusta(X,Y)        a X le gusta Y
    es(X, Y)            X es Y
    come(X, Y)          X come Y
    noMata(X)           X no mata
    estaVivo(X)         X esta vivo

Pregunta:
    leGusta(juan, cacahuetes).

*/

leGusta(juan, X).

es(manzana, X).

es(pollo, X).

es(Z, X) :- come(Y, Z), noMata(Z).

estaVivo(guillermo) :- come(guillermo,cacahuetes).

come(susana, X) :- come(guillermo, X).
