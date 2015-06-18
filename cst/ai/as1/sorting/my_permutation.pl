my_permutation([],[]).
my_permutation([H|T],L) :- my_select(H,L,L1),my_permutation(T,L1).



