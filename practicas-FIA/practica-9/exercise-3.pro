/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 9:
        Ejercicio 3

*/
removeByIndex(0, [_|T], T).

removeByIndex(Index, [H|T], [H|R]):-
    I is Index - 1,
    removeByIndex(I, T, R).
