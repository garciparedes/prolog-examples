/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

pieza_basica(cadena).
pieza_basica(pedales).
pieza_basica(plato).
pieza_basica(eje).
pieza_basica(llanta).
pieza_basica(radios).
pieza_basica(sillin).
pieza_basica(manillar).
pieza_basica(pinones).

ensamblaje(traccion, [eje, plato, pedales, cadena]).
ensamblaje(rueda_delantera, [llanta, radios, eje]).
ensamblaje(cuadro, [sillin, manillar, traccion]).
ensamblaje(rueda_trasera, [llanta, radios, eje, pinones]).
ensamblaje(bicicleta, [rueda_delantera, cuadro, rueda_trasera]).


es_basica([Result|_], Result):- pieza_basica(Result).
es_basica([_|Elem], Result):- es_basica(Elem, Result).
es_basica([Elem|_], Result):- ensamblaje(Elem, L), es_basica(L, Result).
es_basica([_|Elem], Result):- ensamblaje(Elem, L), es_basica(L, Result).


piezas_de(X, Result):-
    ensamblaje(X, L),
    es_basica(L, Result).
