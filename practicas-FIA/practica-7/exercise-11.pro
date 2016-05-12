

libro_de_familia(
    esposo(nombre(antonio,garcia,fernandez),profesion(arquitecto),salario(30000)),
    esposa(nombre(ana,ruiz,lopez),profesion(docente),salario(12000)),
    domicilio(sevilla)
).


libro_de_familia(
    esposo( nombre(luis,alvarez,garcia), profesion(arquitecto), salario(40000)),
    esposa( nombre(ana,romero,soler), profesion(sus_labores), salario(0)),
    domicilio(sevilla)
).


libro_de_familia(
    esposo(nombre(bernardo,bueno,martinez), profesion(docente),salario(12000)),
    esposa(nombre(laura,rodriguez,millan), profesion(medico), salario(25000)), domicilio(cuenca)).

libro_de_familia(
    esposo(nombre(miguel,gonzalez,ruiz), profesion(empresario), salario(40000)),
    esposa(nombre(belen,salguero,cuevas), profesion(sus_labores), salario(0)),
    domicilio(dos_hermanas)
).


profesionDe(Nombre, Profesion):-
    libro_de_familia(
        esposo(nombre(Nombre, _, _), profesion(Profesion),_),
        _,
        _
    ).

profesionDe(Nombre, Profesion):-
    libro_de_familia(
        _,
        esposa(nombre(Nombre, _, _),profesion(Profesion),_),
        _
    ).


ingresosFamiliaDe(Nombre, Ingresos):-
    libro_de_familia(
        esposo(_,_,salario(I1)),
        esposa(nombre(Nombre, _, _), _, salario(I2)),
        _
    ), Ingresos is I1 + I2.

ingresosFamiliaDe(Nombre, Ingresos):-
    libro_de_familia(
        esposo(nombre(Nombre, _, _), _, salario(I2)),
        esposa(_,_,salario(I1)),
        _
    ), Ingresos is I1 + I2.


ganaMasDe(Ingresos, Nombre):-
    libro_de_familia(
        esposo(nombre(Nombre,_,_), _, salario(I)),
        _,
        _
    ), Ingresos =< I.

ganaMasDe(Ingresos, Nombre):-
    libro_de_familia(
        _,
        esposa(nombre(Nombre,_,_), _, salario(I)),
        _
    ), Ingresos =< I.


ganaMenosDe(Ingresos, Nombre):-
    libro_de_familia(
        esposo(nombre(Nombre,_,_), _, salario(I)),
        _,
        _
    ), Ingresos >= I.

ganaMenosDe(Ingresos, Nombre):-
    libro_de_familia(
        _,
        esposa(nombre(Nombre,_,_), _, salario(I)),
        _
    ), Ingresos >= I.
