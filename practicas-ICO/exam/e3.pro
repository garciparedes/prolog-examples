/*
Sergio Garcia Prado
Examen Prolog Ejercicio 3.



Consultas de prueba:
	solve_proof(lit(X), (lit(X):- B)).
	solve_proof(valor(W,V), (valor(W,V):-B)).
*/

:-op(40, xfy, &).
:-op(50, xfy, --->).


/* METAINTERPRETES */
/****************************************************************************/

/*
Metaintérprete basico
*/
solve(true):- !.
solve((A & B)) :- !, solve(A), solve(B).
solve(A) :- (B ---> A), solve(B).


/*
Metaintérprete que resuelve con pruebas
*/
solve_proof(true, true):- !.

solve_proof((A & B), (AC, AB)) :- !, 
	solve_proof(A, AC), 
	solve_proof(B, AB).

solve_proof(A, (A:-C)) :- 
	(B ---> A), 
	solve_proof(B, C).


/* BASES DE CONOCIMIENTO */
/****************************************************************************/


/*
Base de conocimiento diagnostico
*/
true ---> ok(_).
true ---> live(outside).
true ---> light(l1).
true ---> light(l2).
true ---> down(s1).
true ---> up(s2).
true ---> up(s3).

true ---> connected(outside, w5).
true ---> connected(w5, cb1).
true ---> connected(w5, cb2).
true ---> connected(cb2, w6).
true ---> connected(w6, p2).
true ---> connected(cb1, w3).
true ---> connected(w3, p1).
true ---> connected(w3, s1).
true ---> connected(w3, s3).
true ---> connected(s2, w0).
true ---> connected(w0, l1).
true ---> connected(w4, l2).

up(s1) & ok(s1) ---> connected(s1,w1).
down(s1) & ok(s1) ---> connected(s1,w2).

up(s2) & ok(s2) ---> connected(w1,s2).
down(s2) & ok(s2) ---> connected(w2,s2).

up(s3)& ok(s3) ---> connected(s3,w4).

light(X) & live(X) & ok(X) ---> lit(X).
connected(X, Y) & live(X) & ok(X) ---> live(Y).



/*
Base de conocimiento de ejemplo
*/
true ---> valor(w1, 1).
true ---> conectado(w2, w1).
true ---> conectado(w3, w2).
conectado(W,V) & valor(V,X) ---> valor(W,X).