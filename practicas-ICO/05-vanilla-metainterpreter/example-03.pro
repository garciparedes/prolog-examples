/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

/*
* Meta Interprete Vanilla
*/
builtin(A is B).
builtin(A = B).
builtin(A > B).
builtin(A < B).
builtin(A =:= B).
builtin(A =< B).
builtin(A >= B).
builtin(read(X)).
builtin(write(X)).
builtin(functor(T, F, N)).

solve(true,true) :- !.
solve((A, B), (ProofA, ProofB)) :-!, solve(A, ProofA), solve(B, ProofB).
solve(A, (A:-builtin)):- builtin(A), !, A.
solve(A, (A:-Proof)) :- clause(A, B), solve(B, Proof).


/*
* Ejemplo
*/
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W,X):- conectado(W, V), valor(V, X).
