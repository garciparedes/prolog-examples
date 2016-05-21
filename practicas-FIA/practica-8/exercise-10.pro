/*
Author:
    Sergio García Prado
    garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 10

*/

genAscendingList(Num, Lista):-
    Lista = [Num].

genAscendingList(Num, Lista):-
    N is Num + 1,
    genAscendingList(N, L),
    Lista = [Num|L].
