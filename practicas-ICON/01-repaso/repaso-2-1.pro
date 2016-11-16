/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/


reina(carlos_i, 1516, 1556).
reina(felipe_ii, 1556, 1598).
reina(felipe_iii, 1598, 1621).
reina(felipe_iv, 1621, 1665).
reina(carlos_ii, 1665, 1700).

rey_casa_austria(Rey, Fecha):-
    reina(Rey, Comienzo, Fin),
    Fecha >= Comienzo,
    Fecha =< Fin.
