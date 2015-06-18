my_union([],L,L).
my_union([X|L1],L2,L3) :-my_our_member(X,L2), !, my_union(L1,L2,L3).
my_union([X|L1],L2,[X|L3]) :- my_union(L1,L2,L3).

