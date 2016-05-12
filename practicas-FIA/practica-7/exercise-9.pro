/*

Practicas Prolog FIA:

Practica 7:
    Ejercicio 9

Consultas:
    horoscopoPorFecha(agosto,25,X).
    horoscopoPorFecha(agosto,11,X).
*/
dias(enero, 31).
dias(febrero, 28).
dias(marzo, 31).
dias(abril, 30).
dias(mayo, 31).
dias(junio, 30).
dias(julio, 31).
dias(agosto, 31).
dias(septiembre, 30).
dias(octubre, 31).
dias(noviembre, 30).
dias(diciembre, 31).

horoscopo(marzo, 20, abril, 19, aries).
horoscopo(abril, 20, mayo, 20, tauro).
horoscopo(mayo, 21, junio, 20, geminis).
horoscopo(junio, 21, julio, 22, cancer).
horoscopo(julio, 23, agosto, 22, leo).
horoscopo(agosto, 23, septiembre, 22, virgo).
horoscopo(septiembre, 23, octubre, 22, libra).
horoscopo(octubre, 23, noviembre, 21, escorpio).
horoscopo(noviembre, 22, diciembre, 21, sagitario).
horoscopo(diciembre, 22, enero, 19, capricornio).
horoscopo(enero, 20, febrero, 17, acuario).
horoscopo(febrero, 18, marzo, 19, piscis).

horoscopoPorFecha(Mes,Dia, Horoscopo):-
    horoscopo(Mes, D1, M2, D2, Horoscopo),
    Dia >= D1,
    dias(Mes, DiasMax),
    Dia =< DiasMax.

horoscopoPorFecha(Mes,Dia, Horoscopo):-
    horoscopo(M1, D1, Mes, D2, Horoscopo),
    Dia >= 0,
    Dia =< D2.
