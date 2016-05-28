/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Practicas Prolog FIA:

Practica 7:
    Ejercicio 10

Consultas:
    cuelgaDe(X,paginaPrincipal).
    seAccedeATraves(paginaPrincipal, iso, C)
*/

seAccedeATravesDe(paginaPrincipal, formacion).
seAccedeATravesDe(paginaPrincipal, integrarSistemas).

seAccedeATravesDe(formacion, creatividad).
seAccedeATravesDe(formacion, innovacion).

seAccedeATravesDe(creatividad, queEs).
seAccedeATravesDe(creatividad, guia).

seAccedeATravesDe(guia, queEsUnaIdea).
seAccedeATravesDe(guia, comoTenerIdeas).

seAccedeATravesDe(integrarSistemas, calidad).
seAccedeATravesDe(integrarSistemas, mediAmbiente).

seAccedeATravesDe(calidad, iso).

seAccedeATravesDe(iso, sistemaGestion).
seAccedeATravesDe(iso, recursos).


seAccedeATraves(X, Y, Clicks):-
    seAccedeATravesDe(X, Y),
    Clicks is 1.

seAccedeATraves(X, Y, Clicks):-
    seAccedeATravesDe(X, Z),
    seAccedeATraves(Z, Y, C),
    Clicks is C + 1.


cuelgaDe(X, Y):-
    seAccedeATravesDe(Y, X).

cuelgaDe(X, Y):-
    seAccedeATravesDe(Y, Z),
    cuelgaDe(X, Z).
