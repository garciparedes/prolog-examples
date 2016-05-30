/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 8:
    Ejercicio 4

*/


borrar(H, [H|T], T).

borrar(Elem, [H|T], [H|R]):-
    borrar(Elem, T, R).
