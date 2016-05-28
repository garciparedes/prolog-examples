/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 9:
        Ejercicio 4

*/

maximo([H1, H2], H1):-
    H1 > H2.

maximo([H1, H2|T], R):-
    H1 > H2,
    maximo([H1|T], R).


maximo([H1, H2], H2):-
    H1 < H2.

maximo([H1, H2|T], R):-
    H1 < H2,
    maximo([H2|T], R).
