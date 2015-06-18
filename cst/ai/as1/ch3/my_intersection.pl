my_intersection([],L,[]).
my_intersection([X|L1],L2,[X|L3]) :- my_our_member(X,L2), !, my_intersection(L1,L2,L3).
my_intersection([X|L1],L2,L3) :- my_intersection(L1,L2,L3).

