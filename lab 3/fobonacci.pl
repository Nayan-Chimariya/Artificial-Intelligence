clauses:
start.
fibo(0, 0).
fibo(1, 1).
fibo(N, F) :- N > 1, N1 is N-1, N2 is N-2, fibo(N1, F1), fibo(N2, F2), F is F1 + F2.

print_fibo(0) :- write(0).
print_fibo(1) :- write("0 1").
print_fibo(N) :- N > 1, print_fibo(N, 2, 0, 1).

print_fibo(N, N, F1, F2) :-
   F3 is F1+F2,
   write(F3).
print_fibo(N, I, F1, F2) :-
    I < N,
    I1 is I+1,
    fibo(I, F),
    F3 is F1+F2,
    write(F3), write(" "),
    print_fibo(N, I1, F2, F).
