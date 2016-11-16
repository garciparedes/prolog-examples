/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

/*
* Meta Interprete Vanilla-Proof
*/
solve(true, true):-!.

solve((A,B), (AC, BC)):-!,
    solve(A, AC),
    solve(B, BC).


solve(A, (A :- C)):-
    clause(A,B),
    solve(B,C).

/*
* Ejemplo
*/
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W,X):- conectado(W, V), valor(V, X).
