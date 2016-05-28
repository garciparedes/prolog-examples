/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 11

*/

genDecreasingList(Num, Lista):-
    Lista = [Num].

genDecreasingList(Num, Lista):-
    N is Num - 1,
    genDecreasingList(N, L),
    Lista = [Num|L].
