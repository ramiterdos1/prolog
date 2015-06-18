our_permutation([],[]).
our_permutation(L,[H|T]):-select(H,L,R),our_permutation(R,T).

