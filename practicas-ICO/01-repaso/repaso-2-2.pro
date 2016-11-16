/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

factorial(1, 1).
factorial(K, Result):-
    K > 1,
    K2 is K - 1,
    factorial(K2, R),
    Result is K * R.

m_sobre_n(M, N, Result) :-
    factorial(M, T1),
    T2 is M - N,
    factorial(T2, T3),
    factorial(N, T4),
    Result is T1 / (T3 * T4).
