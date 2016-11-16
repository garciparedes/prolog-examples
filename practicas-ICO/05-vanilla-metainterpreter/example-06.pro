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
* Meta Interprete Vanilla Traza
*/
solve_traza(true):-!.
solve_traza((A, B)) :-!, solve(A), solve(B).
solve_traza(A):-
                write('Call: '), write(A), nl,
                clause(A,B), solve_traza(B),
                write('Exit: '), write(A), nl.

                
/*
* Ejemplo
*/
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W,X):- conectado(W, V), valor(V, X).
