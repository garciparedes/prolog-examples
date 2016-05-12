/*

Practicas Prolog FIA:

Practica 7:
    Ejercicio 4

Consultas:
    q(2).

*/
q(X):-p(X),X1 is X+1, p(X1).
p(X):-0 is X mod 2.
