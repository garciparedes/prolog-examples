/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 11

*/

genDecreasingList(Num, [Num]).

genDecreasingList(Num, [Num|L]):-
    N is Num - 1,
    genDecreasingList(N, L).
