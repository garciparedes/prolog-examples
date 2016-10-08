/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

genera_sol(K, Sol):-
    genera_posible_sol(K, Sol),
    valida(Sol).


genera_posible_sol(K, Posible_Sol):-
    numlist(1, K, R),
    permutation(R, Posible_Sol).


valida([_|[]]):- true.
valida([H|T]):-
    valida_reina(H, T, 1),
    valida(T).



valida_reina(_,[],_):- true.
valida_reina(Reina, [C|L], Col):-
	(Reina + Col) =\= C,
	(Reina - Col) =\= C,
    valida_reina(Reina, L, Col+1).
