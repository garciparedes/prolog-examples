/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 6 a

*/


descomponer([_|T], [], T).

descomponer([H|T], [H|L1], L2):-
    descomponer(T, L1, L2).
