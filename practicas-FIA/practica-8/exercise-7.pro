/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 7

*/

generaLista(H, [H|_], []).

generaLista(Elem, [H|T], [H|R]):-
    generaLista(Elem, T, R).
