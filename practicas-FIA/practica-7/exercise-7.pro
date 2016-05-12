/*

Practicas Prolog FIA:

Practica 7:
    Ejercicio 7

Consultas:
    calculaPrecio(roma, hotel, 2 ,Result).
*/

precioTransporte(roma, 200).
precioTransporte(londres, 250).
precioTransporte(tunez, 150).


precioAlojamiento(roma, hotel, 250).
precioAlojamiento(roma, hostal, 150).
precioAlojamiento(roma, camping, 100).

precioAlojamiento(londres, hotel, 150).
precioAlojamiento(londres, hostal, 100).
precioAlojamiento(londres, camping, 50).

precioAlojamiento(tunez, hotel, 100).
precioAlojamiento(tunez, hostal, 80).
precioAlojamiento(tunez, camping, 50).

calculaPrecio(Ciudad, TipoAlojamiento, Dias ,Result):-
    precioTransporte(Ciudad, Temp1),
    precioAlojamiento(Ciudad, TipoAlojamiento, Temp2),
    Result is (Temp1 + Temp2) * Dias.
