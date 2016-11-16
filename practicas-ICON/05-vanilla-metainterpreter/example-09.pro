
live(outside).
light(l1).
light(l2).
down(s1).
up(s2).
up(s3).
connected_to(l1,w0).
connected_to_ok_up(w0,w1,s2).
connected_to_ok_down(w0,w2,s2).
connected_to_ok_up(w1,w3,s1).
connected_to_ok_down(w2,w3,s1).
connected_to_ok_up(w4,w3,s3).
connected_to(l2,w4).
connected_to(p1,w3).
connected_to_ok(w3,w5,cb1).
connected_to(p2,w6).
connected_to_ok(w6, w5, cb2).
connected_to(w5,outside).
ok(l1).
ok(l2).
ok(s1).
ok(s2).
ok(s3).
ok(cb1).
ok(cb2).

lit(L):- light(L), ok(L), live(L).
live(W):- connected_to(W,W1), live(W1).


connected_to(X, Y):- connected_to_ok(X,Y, Z), ok(Z).
connected_to(X, Y):- connected_to_ok_up(X,Y, Z), ok(Z), up(Z).
connected_to(X, Y):- connected_to_ok_down(X,Y, Z), ok(Z), down(Z).
