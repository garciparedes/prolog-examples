/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/

sucesion(N,N):-
    N =< 1,
    !.

sucesion(N, Result):-
    sucesion(N - 1, T1),
    sucesion(N - 2, T2),
    Result is (T1 * 3) + (T2 * 2).


serie(N, Result):-
    N =:= 0,
    sucesion(N, Result),
    !.

serie(N, Result):-
    serie(N-1, R2),
    sucesion(N, R1),
    Result is R1 + R2.
