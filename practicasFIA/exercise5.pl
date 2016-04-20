/*

Practicas Prolog FIA:

Practica 5:
    Ejercicio 5

Dominio:
    Personas X

Funciones:
    leTocaLoteria(X)        A X le toca la loteria.
    estudia(X)              X estudia.
    esAfortunado(X)         X es afortunado.
    esFeliz(X)              X es feliz.
    apruebaExamen(X,Y)      X aprueba examen Y


Pregunta:
    esFeliz(juan).

*/

esFeliz(X) :- apruebaExamen(X, exfia), leTocaLoteria(X).

apruebaExamen(X,Y) :- estudia(X) ; esAfortunado(X).

estudia(pedro).

not(estudia(juan)).

esAfortunado(juan).

leTocaLoteria(X) :- esAfortunado(X).
