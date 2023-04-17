Clauses:
start.
list_rev([]).
list_rev([Head | Tail]) :-
    list_rev(Tail),
    write(Head), write(' ').
