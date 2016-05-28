/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 9:
        Ejercicio 2

*/


generaLista(Elem, [H|_], []):-
    Elem = H.

generaLista(Elem, [H|T], [H|R]):-
    generaLista(Elem, T, R).
