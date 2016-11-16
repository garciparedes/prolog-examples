/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/


/*
* Meta Interprete Vanilla with max deep
*/
solve(true, Deep):-!, Deep >= 0.

solve((A,B), Deep):-!,
    solve(A, Deep),
    solve(B, Deep).


solve(A,Deep) :-
    clause(A,B),
    solve(B,Deep-1).

/*
* Ejemplo
*/
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W,X):- conectado(W, V), valor(V, X).
