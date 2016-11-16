/*
Sergio Garcia Prado
Examen Prolog Ejercicio 1.



Consultas de prueba:
	solve_pmax(lit(X),1).
	solve_pmax(lit(X),100).
	solve_pmax(valor(W,V),1).
	solve_pmax(valor(W,V),100).
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
Metaintérprete que resuelve hasta la profundidad especificada en Deep
*/
solve_pmax(true, Deep):- !, 
	(Deep >= 0).

solve_pmax((A & B), Deep) :- !, 
	solve_pmax(A, Deep), 
	solve_pmax(B, Deep).

solve_pmax(A, Deep) :- 
	(B ---> A), 
	solve_pmax(B, Deep-1).



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