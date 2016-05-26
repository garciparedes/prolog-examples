/*
Author:
    Sergio García Prado
    garciparedes.me

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 14

*/

prefijo(_, []).

prefijo([H|T], [H|L]):-
    prefijo(T, L).



sufijo(L, L).

sufijo([_|T], R):-
    sufijo(T, R).
