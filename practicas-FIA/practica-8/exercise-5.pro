/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 8:
    Ejercicio 5

*/


insertar(E, L, [E|L]).

insertar(E, [H|T], [H|R]):-
    insertar(E, T, R).
