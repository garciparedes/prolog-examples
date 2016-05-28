/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 7:
    Ejercicio 6

Consultas:
    ruta(a,e,D).

*/

enlace(a,b,3).
enlace(a,c,2).
enlace(c,d,4).
enlace(c,e,5).

ruta(Ciudad1, Ciudad2, DistanciaTotal):-
    enlace(Ciudad1, Ciudad2, DistanciaTotal).


ruta(Ciudad1, Ciudad2, DistanciaTotal):-
    enlace(Ciudad1, CiudadM, D1),
    ruta(CiudadM, Ciudad2, D2),
    DistanciaTotal is D1 + D2.
