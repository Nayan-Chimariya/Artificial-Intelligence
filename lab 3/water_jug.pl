Clauses:
start.
water(P,_):-P>4 ,write("P capacity is full").
water(_,Q):-Q>3,write("Q capacity is full").
water(P,Q):-
    P is 4,Q is 3,
    P1 is 0, Q1 is 3 ,
    write("jug1 ="),
    write(P1),
    write("jug2="),
    write(Q1),nl,
    water(P1,Q1).
water(P,Q):-
    P is 0,
    Q is 3,P1 is 3,
    Q1 is 0,
    write("jug1 ="),
    write(P1),write("jug2="),
    write(Q1),nl,water(P1,Q1).
water(P,Q):-
    P is 3,
    Q is 0,P1 is 3, Q1 is 3,write("jug1 ="),
    write(P1),write("jug2="),
    write(Q1),nl,water(P1,Q1).
water(P,Q):-
    P is 3,Q is 3,P1 is 4,
    Q1 is 2 ,write("jug1 ="),
    write(P1),write("jug2="),
    write(Q1),nl,water(P1,Q1).
water(P,Q):-
    P is 4,
    Q is 2,P1 is 0,
    Q1 is 2 ,write("jug1 ="),
    write(P1),write("jug2="),
    write(Q1),nl,water(P1,Q1).
water(P,Q):-P is 0,Q is 2,
    P1 is 2, Q1 is 0 ,
    write("jug1 ="),write(P1),
    write("jug2="),write(Q1),nl,
    water(P1,Q1),nl,write("solution reached").
