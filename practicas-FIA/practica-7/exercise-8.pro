/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 7:
    Ejercicio 8

Consultas:
    esJefeDe(directorGeneral,X).
    dependeDe(reparto2, X).
*/

esJefeDe(directorGeneral, responsableDeCalidad).

esJefeDe(responsableDeCalidad, responsableDeTesoreria).
esJefeDe(responsableDeCalidad, responsableDeVentas).
esJefeDe(responsableDeCalidad, responsableComercial).

esJefeDe(responsableDeTesoreria, asesor).
esJefeDe(asesor, contable).

esJefeDe(responsableDeVentas, operario1).
esJefeDe(responsableDeVentas, operario2).

esJefeDe(operario1, reparto1).
esJefeDe(operario2, reparto2).

esJefeDe(responsableComercial, vendedor1).
esJefeDe(responsableComercial, vendedor2).


dependeDe(X, Y):-
    esJefeDe(Y, X).

dependeDe(X, Y):-
    esJefeDe(Y, Z), dependeDe(X, Z).
