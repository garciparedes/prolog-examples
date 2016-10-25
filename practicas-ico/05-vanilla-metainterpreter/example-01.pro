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
* Ejemplo
*/
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W,X):- conectado(W, V), valor(V, X).
