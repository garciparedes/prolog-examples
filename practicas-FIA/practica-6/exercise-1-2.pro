/*

Practicas Prolog FIA:

Practica 6:
    Ejercicio 1 y 2

Dominio:
    objetos X

Predicados:
    derecha_de(X, Y)            X esta justo a la derecha de Y
    encima_de(X, Y)             X esta justo encima de Y
    izquierda_de(X, Y)          X esta justo a la izquierda de Y
    debajo_de(X, Y)             X esta justo debajo de Y

    derecha(X, Y)            X esta a la derecha de Y
    encima(X, Y)             X esta encima de Y
    izquierda(X, Y)          X esta a la izquierda de Y
    debajo(X, Y)             X esta debajo de Y

*/

derecha_de(llave, tortuga).
derecha_de(semaforo, llave).
derecha_de(martillo, semaforo).
derecha_de(balanza, cafe).

encima_de(coche, tortuga).
encima_de(bombilla, coche).
encima_de(cafe, semaforo).
encima_de(lupa, cafe).
encima_de(balanza, martillo).



izquierda_de(tortuga, llave)    :- derecha_de(llave, tortuga).
izquierda_de(llave, semaforo)   :- derecha_de(semaforo, llave).
izquierda_de(semaforo, martillo):- derecha_de(martillo, semaforo).
izquierda_de(cafe, balanza)     :- derecha_de(balanza, cafe).

debajo_de(tortuga, coche)       :- encima_de(coche, tortuga).
debajo_de(coche, bombilla)      :- encima_de(bombilla, coche).
debajo_de(semaforo, cafe)       :- encima_de(cafe, semaforo).
debajo_de(cafe, lupa)           :- encima_de(lupa, cafe).
debajo_de(martillo, balanza)        :- encima_de(balanza, martillo).



derecha(A,B) :- derecha_de(A,B).
derecha(A,B) :- derecha_de(A, X) , derecha(X, B).

izquierda(A,B) :- izquierda_de(A,B).
izquierda(A,B) :- izquierda_de(A, X) , izquierda(X, B).

encima(A,B) :- encima_de(A,B).
encima(A,B) :- encima_de(A, X) , encima(X, B).

debajo(A,B) :- debajo_de(A,B).
debajo(A,B) :- debajo_de(A, X) , debajo(X, B).
