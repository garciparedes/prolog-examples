/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 8:
    Ejercicio 3

*/

sumAll([], 0).

sumAll([X|Y], SumResult):-
    sumAll(Y, S),
    SumResult is X + S.
