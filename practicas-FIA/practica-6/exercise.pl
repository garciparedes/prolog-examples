/*

Practicas Prolog FIA:

Practica 6:
    Ejercicio 1

Dominio:
    objetos X

Funciones:
    derecha_de(X, Y)            X esta a la derecha de Y
    encima_de(X, Y)             X esta encima de Y
    izquierda_de(X, Y)          X esta a la izquierda de Y
    debajo_de(X, Y)             X esta debajo de Y

*/
derecha_de(llave, tortuga).
derecha_de(semaforo, llave).
derecha_de(martillo, semaforo).
derecha_de(balanza, cafe).

encima_de(coche, tortuga).
encima_de(bombilla, coche).
encima_de(cafe, semaforo).
encima_de(lupa, cafe).
encima_de(balanza, lupa).

izquierda_de(tortuga, llave) :-  derecha_de(llave, tortuga).
izquierda_de(llave, semaforo). :- derecha_de(semaforo, llave).
izquierda_de(semaforo, martillo). :- derecha_de(martillo, semaforo).
izquierda_de(cafe, balanza). :- derecha_de(balanza, cafe).

debajo_de(tortuga, coche) :- encima_de(coche, tortuga).
debajo_de(coche, bombilla):- encima_de(bombilla, coche).
debajo_de(semaforo, cafe):- encima_de(cafe, semaforo).
debajo_de(cafe, lupa):- encima_de(lupa, cafe).
encima_de(lupa, balanza):- encima_de(balanza, lupa).

izquierda_de():-
