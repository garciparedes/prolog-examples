/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 6:
    Ejercicio 3

*/

mover(
    estado(medio,sobre_caja,medio,no_tiene),
    coger,
    estado(medio,sobre_caja,medio,tiene)
).

mover(
    estado(P,sobre_suelo,P,H),
    subir,
    estado(P ,sobre_caja,P ,H)
).

mover(
    estado(P1,sobre_suelo,P1,H),
    empujar(P1,P2),
    estado(P2,sobre_suelo,P2,H)
).

mover(
    estado(P1,sobre_suelo,B,H),
    caminar(P1,P2), estado(P2,sobre_suelo,B,H)
).

puede_coger(
    estado(_, _, _,tiene)
).

puede_coger(Estado1):-
    mover(Estado1,Movimiento,Estado2),
    puede_coger(Estado2).
