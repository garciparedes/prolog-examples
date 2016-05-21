/*
Author:
    Sergio García Prado
    garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 13

*/
isConsecutive([H1, H2 | _ ], E1, E2):-
    E1 = H1,
    E2 = H2.

isConsecutive([ _ , H2 | T], E1, E2):-
    isConsecutive([H2|T], E1, E2).
