/*
Author:
    Sergio García Prado
    garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 6 a

*/


descomponer([H|T], Lista1, Lista2):-
    T \= [],
    Lista1 = [H],
    Lista2 = T.



descomponer([H|T], Lista1, Lista2):-
    descomponer(T, L1, L2),
    Lista1 = [H|L1],
    Lista2 = L2.
