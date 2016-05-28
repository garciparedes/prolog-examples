/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 5:
    Ejercicio 6

Dominio:
    Personas X

Funciones:
    esMadre(X)          X es madre.
    leGusta(X, Y)       A X le gusta Y.
    esBueno(X)          X es bueno.
    esMujer(X)          X es mujer.
    esMaridoDe(X, Y)    X es marido de Y.

Pregunta:
    esMujer(X), leGusta(X, Y), esMaridoDe(Y, X).

*/

leGusta(X, hijo) :- esMadre(X), esBueno(hijo).


esMadre(X) :- esMujer(X).

esMujer(ana).

esMaridoDe(maridoana, ana).

esBueno(maridoana).
