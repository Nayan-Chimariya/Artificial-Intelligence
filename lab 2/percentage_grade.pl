test:
nayan.
marks:-
    write('Enter marks of 5 subjects : '),
    read(A),read(B),read(C),read(D), read(E),

    P is (A+B+C+D+E)/500*100,
    write("Percentage = "), write(P),grade(P).

grade(P):-
    P>=90, nl, write('Grade = A+');
    P>=80, nl, write('Grade = A');
    P>=70, nl, write('Grade = B+');
    P>=60, nl, write('Grade = B');
    P>=50, nl, write('Grade = C+');
    P>=40, nl, write('Grade = C');
    P>=30, nl, write('Grade = D+');
    P<30, nl, write('Grade = NG').


