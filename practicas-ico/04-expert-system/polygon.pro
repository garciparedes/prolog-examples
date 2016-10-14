/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

nombre(triangulo):- orden(3).
nombre(trianguloIsosceles):- nombre(triangulo), ladosIguales(2).
nombre(trianguloRectangulo):- nombre(triangulo), anguloRecto(si).
nombre(trianguloRectanguloIsosceles):- nombre(trianguloIsosceles), nombre(trianguloRectangulo).
nombre(trianguloEquilatero):- nombre(triangulo), ladosIguales(3).


nombre(cuadrilatero):- orden(4).
nombre(trapecio):- nombre(cuadrilatero), ladosParalelos(2).
nombre(paralelogramo):- nombre(cuadrilatero), ladosParalelos(4).
nombre(rectangulo):- nombre(paralelogramo), anguloRecto(si).
nombre(rombo):- nombre(paralelogramo), ladosIguales(4).
nombre(cuadrado):- nombre(rombo), nombre(rectangulo).
