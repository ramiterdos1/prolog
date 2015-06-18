trimlast(_,[],[]).
trimlast(N,L,L1) :- reverse(L,L2), trim(N,L2,L3),reverse(L3,L1).

reverse([],[]).
reverse([H|T],T1):-reverse(T,Z),append(Z,[H],T1).

append([],L,L).
append([X|L1],L2,[X|L3]):-append(L1,L2,L3).
