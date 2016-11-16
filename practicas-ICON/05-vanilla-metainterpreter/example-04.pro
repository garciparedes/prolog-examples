/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

/*
* Meta Interprete Vanilla
*/


:-op(40, xfy, &).
:-op(50, xfy, --->).

solve(true):- !.
solve((A & B)) :- !, solve(A), solve(B).
solve(A):- !, B ---> A, solve(B).

/*
* Ejemplo
*/
true ---> valor(w1, 1).
true ---> conectado(w2, w1).
true ---> conectado(w3, w2).
conectado(W,V) & valor(V,X) ---> valor(W,X).
