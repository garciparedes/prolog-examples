/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

es_padre_de(luis, pedro).
es_padre_de(luis, javier).

es_padre_de(sergio, maria).

es_padre_de(mario, paula).

es_padre_de(pedro, juan).
es_padre_de(pedro, carlos).
es_padre_de(pedro, lucia).
es_padre_de(pedro, jorge).

es_padre_de(javier, alberto).


es_hijo_de(Hijo, Padre):- es_padre_de(Padre, Hijo).


es_abuelo_de(Abuelo, Nieto):- es_padre_de(Abuelo, Padre), es_padre_de(Padre, Nieto).


es_nieto_De(Nieto, Abuelo):- es_abuelo_de(Abuelo, Nieto).


es_hermano_de(Hermano1, Hermano2):-
    es_hijo_de(Hermano1, Padre),
    es_padre_de(Padre, Hermano2),
    Hermano1 \= Hermano2.


es_tio_de(Tio, Sobrino):- es_hijo_de(Sobrino, Padre), es_hermano_de(Padre, Tio).


es_sobrino_de(Sobrino, Tio):- es_tio_de(Tio, Sobrino).
