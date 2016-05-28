/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

    Practica 9:
        Ejercicio 5

*/
decToBinary(0,[0]):-!.
decToBinary(1,[1]):-!.

decToBinary(Dec, Bin):-
    R is Dec mod 2,
    Coc is Dec // 2,
    decToBinary(Coc, RT),
    append(RT, [R], Bin).
