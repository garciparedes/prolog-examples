/*

Practicas Prolog FIA:

Practica 5:
    Ejercicio 2

Dominio:
    Personas

Funciones:
    ayudaA(X, Y)        X ayuda a Y
    viveEnCasaDe(X,Y)   X vive en casa de Y
    amigoDe(X,Y)        X es amigo de Y
    trabajaCon(X,Y)     X trabaja con Y

Pregunta:
    viveEnCasaDe(X, manolo).
*/

viveEnCasaDe(X, manolo) :- ayudaA(X, juan).

ayudaA(antonio, X) :- trabajaCon(antonio, X).

trabajaCon(X, juan) :- amigoDe(X, carlos).

amigoDe(antonio, carlos).
