/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 12

*/

removeByIndex(0, [_|T], T).

removeByIndex(Index, [H|T], [H|R]):-
    I is Index - 1,
    removeByIndex(I, T, R).
