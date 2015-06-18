deletenth([],_,[]).
deletenth(L,N,L1) :- mydeletenth(L,N,L1,0).
mydeletenth([H|T],N,[H|L1],C) :- C < N, mydeletenth(T,N,L1,C1), C is C1+1,!.
mydeletenth
mydeletenth([H|T],N,L1,C) :- C=N,mydeletenth(T,N,T,C)

