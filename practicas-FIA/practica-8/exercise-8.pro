/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 8

*/

isAscending([H1,H2]):-
    H1 < H2.

isAscending([H1,H2|T]):-
    H1 < H2,
    isAscending([H2|T]).
