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
solve(A):- !, (B ---> A), solve(B).


dsolve(true,D,D):-!.
dsolve((A & B),D1,D2) :- !, dsolve(A, D1, D2), dsolve(B, D1, D2).
dsolve(A, D1, D2) :- (B ---> A),  dsolve(B, D1, D2).
dsolve(A, D1, D2) :-!, A = ok(_), write([A]), nl.




/*
* Ejercicio
*/

light(L) & ok(L) & live(L) ---> lit(L).
power_outlet(O) & ok(O) & live(O) ---> electrocute(O).

lit(P) ---> power(P).
electrocute(P) ---> power(P).

connected_to(W,W1) & live(W1) ---> live(W).


true ---> live(outside).

true ---> light(l1).
true ---> light(l2).

true ---> power_outlet(p1).
true ---> power_outlet(p2).


true ---> down(s1).
true ---> up(s2).
true ---> up(s3).



up(s2) & ok(s2) ---> connected_to(w0,w1).
down(s2) & ok(s2) ---> connected_to(w0,w2).

up(s1) & ok(s1) ---> connected_to(w1,w3).
down(s1) & ok(s1) ---> connected_to(w2,w3).

up(s3) & ok(s3) ---> connected_to(w4,w3).


ok(cb1) ---> connected_to(w3,w5).
ok(cb2) ---> connected_to(w6,w5).


true ---> connected_to(l1,w0).
true ---> connected_to(l2,w4).
true ---> connected_to(p1,w3).
true ---> connected_to(p2,w6).
true ---> connected_to(w5,outside).
