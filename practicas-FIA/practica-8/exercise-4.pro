/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 8:
    Ejercicio 4

*/

borrar(Elem, [], Result):-
    Result = [].

borrar(Elem, [H|T], Result):-
    Elem = H,
    Result = T.

borrar(Elem, [H|T], Result):-
    Elem = H,
    borrar(Elem, T, R),
    Result = [H|R].

borrar(Elem, [H|T], Result):-
    Elem \= H,
    borrar(Elem, T, R),
    Result = [H|R].
