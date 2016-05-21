/*
Author:
    Sergio García Prado
    garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 9

*/

isDecreasing([H1,H2]):-
    H1 > H2.

isDecreasing([H1,H2|T]):-
    H1 > H2,
    isDecreasing([H2|T]).
