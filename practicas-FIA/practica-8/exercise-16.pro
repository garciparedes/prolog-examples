/*
Author:
    Sergio García Prado
    garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 16

*/

maximo([H1, H2], H1):-
    H1 > H2.

maximo([H1, H2], H2):-
    H1 < H2.
    

maximo([H1, H2|T], R):-
    H1 > H2,
    maximo([H1|T], R).

maximo([H1, H2|T], R):-
    H1 < H2,
    maximo([H2|T], R).
