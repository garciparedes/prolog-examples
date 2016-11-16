/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
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

solve(true):- !.
solve((A,B)) :-!, solve(A), solve(B).
solve(A):- builtin(A), !, A.
solve(A) :- clause(A, B), solve(B).
