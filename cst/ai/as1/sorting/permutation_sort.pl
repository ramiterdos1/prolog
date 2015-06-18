permutation_sort([],[]).
permutation_sort(L,L1):-permutation(L,L1),ordered(L1),!.

