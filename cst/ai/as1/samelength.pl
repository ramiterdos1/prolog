same_length([],[]).
same_length([A|L1],[B|L2]) :- same_length(L1,L2).

