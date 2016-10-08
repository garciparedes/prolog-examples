/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
    tablero = [x,e,o,
              e,e,e,
              x,o,x]
*/

linea(1,2,3).
linea(4,5,6).
linea(7,8,9).

linea(1,4,7).
linea(2,5,8).
linea(3,6,9).

linea(1,5,9).
linea(3,5,7).


casilla([H|_], Casilla, H):-
    Casilla =:= 1,
    !.

casilla([_|T], Casilla, Result):-
    Casilla > 1,
    casilla(T, Casilla-1, Result).


vacio(Tablero, Casilla):- casilla(Tablero, Casilla, e).


cruz(Tablero, Casilla):- casilla(Tablero, Casilla, x).


amenaza(Tablero, [A,B,C]):-
    linea(A, B, C),
    vacio(Tablero, A),
    cruz(Tablero, B),
    cruz(Tablero, C).

amenaza(Tablero, [A,B,C]):-
    linea(A, B, C),
    cruz(Tablero, A),
    vacio(Tablero, B),
    cruz(Tablero, C).

amenaza(Tablero, [A,B,C]):-
    linea(A, B, C),
    cruz(Tablero, A),
    cruz(Tablero, B),
    vacio(Tablero, C).
