my_difference([],L,[]).
my_difference([X|L1],L2,L3) :- my_our_member(X,L2),!,my_difference(L1,L2,L3).
my_difference([X|L1],L2,[X|L3]) :- my_difference(L1,L2,L3).


