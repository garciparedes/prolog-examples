/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 8:
    Ejercicio 4

*/


borrar(H, [H|T], T).

borrar(E, [H|T], [H|R]):-
    borrar(E, T, R).
