/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 7

*/

generaLista(Num, Lista):-
    Num =:= 0,
    Lista = [].

generaLista(Num, Lista):-
    Num >= 0,
    N is Num - 1,
    generaLista(N, L),
    Lista = [Num|L].
