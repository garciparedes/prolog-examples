/*
Author:
    Sergio García Prado
    garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 7

*/

generaLista(Elem, [H|T], Result):-
    Elem = H,
    Result = [].

generaLista(Elem, [H|T], Result):-
    generaLista(Elem, T, R),
    Result = [H| R].
