/*
Author:
    https://en.wikibooks.org/wiki/Prolog/Sorting

Practicas Prolog FIA:

    Practica 8:
        Ejercicio 17

*/

mergesort([], []).

mergesort([X], [X]).

mergesort([X|Xs], S) :-
    length(Xs, Len),
    0 < Len,
    split_in_half([X|Xs], Ys, Zs),
    mergesort(Ys, SY),
    mergesort(Zs, SZ),
    merge(SY, SZ, S).



merge([], Xs, Xs).

merge(Xs, [], Xs).

merge([X|Xs], [Y|Ys], [X|S]) :-
    X @=< Y,
    merge(Xs, [Y|Ys], S).

merge([X|Xs], [Y|Ys], [Y|S]) :-
    Y @=< X,
    merge([X|Xs], Ys, S).



split_in_half(Xs, Ys, Zs) :-
    length(Xs, Len),
    Half is Len // 2,    % // denotes integer division, rounding down
    split_at(Xs, Half, Ys, Zs).



split_at(Xs, N, Ys, Zs) :-
    length(Ys, N),
    append(Ys, Zs, Xs).
