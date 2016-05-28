/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 7:
    Ejercicio 12

Consultas:
    da(X, oveja).

*/
puede(respirar, animal).

esUn(ave, animal).
esUn(gorrion, ave).
esUn(gorriolin1, ave).
esUn(gorriolin2, gorrion).
esUn(canario, ave).
esUn(piolin, canario).
esUn(mammifero, animal).
esUn(oveja, mammifero).
esUn(catalina, oveja).
esUn(vaca, mammifero).
esUn(rosenda, vaca).

vuela(bien, ave).

tiene(plumas, ave).

da(leche, mammifero).
da(lana, oveja).

pone(huevos, ave).

patas(cortas, gorrion).

color(marron, gorriolin1).
color(amarillo, piolin).
color(amarillo, rosenda).

canta(bien, canario).

come(hierva, vaca).


esUnG(X, Y):-
    esUn(X, Y).

esUnG(X, Y):-
    esUn(X, Z), esUnG(Z, Y).


puedeG(X, Y):-
    puede(X, Y).

puedeG(X, Y):-
    esUnG(Y, Z), puede(X, Z).


daG(X, Y):-
    da(X, Y).

daG(X, Y):-
    esUnG(Y, Z), da(X, Z).


vuelaG(X, Y):-
    vuela(X, Y).

vuelaG(X, Y):-
    esUnG(Y, Z), vuela(X, Z).


tieneG(X, Y):-
    tiene(X, Y).

tieneG(X, Y):-
    esUnG(Y, Z), tiene(X, Z).


poneG(X, Y):-
    pone(X, Y).

poneG(X, Y):-
    esUnG(Y, Z), pone(X, Z).


patasG(X, Y):-
    patas(X, Y).

patasG(X, Y):-
    esUnG(Y, Z), patas(X, Z).


colorG(X, Y):-
    color(X, Y).

colorG(X, Y):-
    esUnG(Y, Z), color(X, Z).


cantaG(X, Y):-
    canta(X, Y).

cantaG(X, Y):-
    esUnG(Y, Z), canta(X, Z).


comeG(X, Y):-
    come(X, Y).

comeG(X, Y):-
    esUnG(Y, Z), come(X, Z).
