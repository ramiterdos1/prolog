my_sublist([],_).
my_sublist([X|L],[X|M]) :- my_prefix(L,M), !.


my_prefix([],_).
my_prefix([X|L], [X|M]) :- my_prefix(L,M).
