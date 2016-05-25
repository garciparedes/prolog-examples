/*
Author:
    Sergio García Prado
    garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 13

*/
isConsecutive([E1, E2 | _ ], E1, E2).

isConsecutive([ _ , H2 | T], E1, E2):-
    isConsecutive([H2|T], E1, E2).
