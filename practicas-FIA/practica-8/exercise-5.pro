/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 8:
    Ejercicio 5

*/

insertar(Elem, [], [Elem]).

insertar(Elem, [H|T], [Elem|[H|T]]).

insertar(Elem, [H|T], [H|R]):-
    insertar(Elem, T, R).
