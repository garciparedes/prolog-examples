/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

/*
* Meta Interprete Vanilla with inverted evaluation order
*/
solve(true):- !.
solve((A,B)):- !, solve(B), solve(A).
solve(A):- !, clause(A,B), solve(B).


/*
* Ejemplo
*/
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W,X):- conectado(W, V), valor(V, X).
