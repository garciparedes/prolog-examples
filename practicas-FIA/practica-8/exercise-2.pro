/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 8:
    Ejercicio 2

*/

len([], Len):-
    Len is 0.

len([X|Y], Len):-
    len(Y, L),
    Len is L + 1.
