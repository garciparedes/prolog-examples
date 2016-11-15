/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

nombre(triangulo):- orden(3).
nombre(trianguloIsosceles):- nombre(triangulo), ladosIguales(2).
nombre(trianguloRectangulo):- nombre(triangulo), anguloRecto(si).
nombre(trianguloRectanguloIsosceles):- nombre(trianguloIsosceles), nombre(trianguloRectangulo).
nombre(trianguloEquilatero):- nombre(triangulo), ladosIguales(3).


nombre(cuadrilatero):- orden(4).
nombre(trapecio):- nombre(cuadrilatero), ladosParalelos(2).
nombre(paralelogramo):- nombre(cuadrilatero), ladosParalelos(4).
nombre(rectangulo):- nombre(paralelogramo), anguloRecto(si).
nombre(rombo):- nombre(paralelogramo), ladosIguales(4).
nombre(cuadrado):- nombre(rombo), nombre(rectangulo).


ladosIguales(X):- ask('¿Cuantos lados iguales tiene la figura? ', ladosIguales, X).
anguloRecto(X):- ask('¿La figura posee angulos rectos (si, no)? ', anguloRecto, X).
ladosParalelos(X):- ask('¿Cuantos lados paralelos tiene la figura (0, 2 o 4)? ', ladosParalelos, X).
orden(X):-ask('¿Cuantos lados? ', orden, X).


ask(_,Pred, X):-
    memory(Pred, X).

ask(_, Pred, _):-
    memory(Pred,_),
    !,
    fail.

ask(Question, Pred , X):-
    write(Question),
    read(Y),
    asserta(memory(Pred, Y)),
    X == Y.

solve :-
    retractall(memory(_,_)),
    findall(X, nombre(X), R),
    write(R).
