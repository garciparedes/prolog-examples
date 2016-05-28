/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 6:
    Ejercicio 4

*/
f(1,one).

f(s(1),two).

f(s(s(1)),three).

f(s(s(s(X))),N):-f(X,N).
