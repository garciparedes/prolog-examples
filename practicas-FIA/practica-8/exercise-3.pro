/*

Practicas Prolog FIA:

Practica 8:
    Ejercicio 3

*/

sumAll([], SumResult):-
    SumResult is 0.

sumAll([X|Y], SumResult):-
    sumAll(Y, S),
    SumResult is X + S.
