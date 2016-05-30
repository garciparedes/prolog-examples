/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 10

*/

genAscendingList(Num, [Num]).

genAscendingList(Num, [Num|L]):-
    N is Num + 1,
    genAscendingList(N, L).
