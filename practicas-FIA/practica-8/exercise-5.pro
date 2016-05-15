/*

Practicas Prolog FIA:

Practica 8:
    Ejercicio 5

*/

insertar(Elem, [], Result):-
    Result = [Elem].

insertar(Elem, [H|T], Result):-
    Result = [Elem|[H|T]].

insertar(Elem, [H|T], Result):-
    insertar(Elem, T, R),
    Result = [H|R].
