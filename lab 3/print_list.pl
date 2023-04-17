clauses:
start.
read_list(List) :-
    write('Enter a list: '),
    read_line_to_string(user_input, Input),
    read_term_from_atom(Input, List, []).
