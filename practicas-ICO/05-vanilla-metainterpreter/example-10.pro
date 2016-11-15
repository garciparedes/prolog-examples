/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

/*
* Meta Interprete Vanilla
*/
solve(true):- !.
solve((A,B)):- !, solve(A), solve(B).
solve(A):- !, clause(A,B), solve(B).


/*
* Meta Interprete Vanilla-Proof
*/
solve_proof(true, true):-!.

solve_proof((A,B), (AC, BC)):-!,
    solve_proof(A, AC),
    solve_proof(B, BC).


solve_proof(A, (A :- C)):-
    clause(A,B),
    solve_proof(B,C).

/*
* Ejemplo
*/
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W,X):- conectado(W, V), valor(V, X).
