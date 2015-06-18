del(X,[X|L1],L1).
del(X,[Y|L1],[Y|L2]):-del(X,L1,L2).

permutate([],[]).
permutate(L,[X|P]):-del(X,L,L1),permutate(L1,P).


higher([H|T],[H1|T1]):-H1>H.
higher([H|T],[H|T1]):-higher(T,T1).

higher_perm(L,L1):-permutate(L,L1),higher(L,L1).

far_higher_perm(L,L1):-higher_perm(L,L2),higher(L2,L1).

next_higher_perm(L,L1):-higher_perm(L,L1),not(far_higher_perm(L,L1)).
