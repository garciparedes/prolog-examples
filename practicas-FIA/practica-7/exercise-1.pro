/*
Author:
    Jorge Cabrera. Univ. de la Palmas de Gran Canarias)

Practicas Prolog FIA:

Practica 7:
    Ejercicio 1

Consultas:
    comida(consome,Principal, Postre, Bebida).
    comida_equilibrada(Entrada,Principal,naranja, Bebida).
    valor(Entrada, Principal, Postre, Bebida, Valor), menor(Valor,500).
*/


%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Programa restaurante  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%

% menu

entrada(paella).
entrada(gazpacho).
entrada(consome).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(nueces_con_miel).
postre(naranja).

bebida(vino).
bebida(cerveza).
bebida(agua).


% Valor calorico de una raci�n

calorias(paella, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filete_de_cerdo, 400).
calorias(pollo_asado, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces_con_miel, 500).
calorias(naranja, 50).

calorias(vino, 100).
calorias(cerveza, 50).
calorias(agua, 0).

% plato_principal(P) P es un plato principal si es carne o pescado

plato_principal(P):- carne(P).
plato_principal(P):- pescado(P).

% comida(Entrada, Principal, Postre)

comida(Entrada, Principal, Postre, Bebida):-
        entrada(Entrada),
        plato_principal(Principal),
        postre(Postre),
        bebida(Bebida).

% Valor calorico de una comida

valor(Entrada, Principal, Postre, Bebida, Valor):-
        calorias(Entrada, X),
        calorias(Principal, Y),
        calorias(Postre, Z),
        calorias(Bebida, V),
        sumar(X, Y, Z, V, Valor).

% comida_equilibrada(Entrada, Principal, Postre)

comida_equilibrada(Entrada, Principal, Postre, Bebida):-
        comida(Entrada, Principal, Postre, Bebida),
        valor(Entrada, Principal, Postre, Bebida, Valor),
        menor(Valor, 600).


% Conceptos auxiliares

sumar(X, Y, Z, V, Res):-
        Res is X + Y + Z + V.             % El predicado "is" se satisface si Res se puede unificar
                                      % con el resultado de evaluar la expresi�n X + Y + Z
menor(X, Y):-
        X < Y.                        % "menor" num�rico

dif(X, Y):-
        X =\= Y.                      % desigualdad num�rica
