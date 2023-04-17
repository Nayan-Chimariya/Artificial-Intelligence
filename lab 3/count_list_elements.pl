Clauses:
start.
count_elements([], 0).
count_elements([_ | Tail], Count) :-
    count_elements(Tail, TailCount),
    Count is TailCount + 1.
