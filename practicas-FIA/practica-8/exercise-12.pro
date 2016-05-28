/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 12

*/

removeByIndex(0, [_|T], Result):-
    Result = T.

removeByIndex(Index, [H|T], Result):-
    Index > 0,
    I is Index -1,
    removeByIndex(I, T, R),
    Result = [H|R].
