/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 9:
        Ejercicio 1

*/

sumAll([X], X).

sumAll([X|Y], SumResult):-
    sumAll(Y, S),
    SumResult is X + S.
