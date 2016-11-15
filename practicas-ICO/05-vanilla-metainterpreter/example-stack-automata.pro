/*
Author:
    Sergio García Prado (@garciparedes)
    http://garciparedes.me

Prácticas Prolog ICO
*/


/*
* Reverse List.
* http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse25
*/
accRev([H|T],A,R):-  accRev(T,[H|A],R).
accRev([],A,A).

rev(L,R):-  accRev(L,[],R).




/*
* Accepts palindrome string 
*/
acepta([]):- true.
acepta([_|[]]):- true.
acepta(X):- string_to_list(X, [Y|B] ), rev(B,[Z|R]), Y = Z, acepta(R).
