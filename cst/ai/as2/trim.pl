trim(_,[],[]).
trim(N,L1,L1) :- N<1,!.
trim(N,[H|T],L) :- N>=1, N1 is N-1,trim(N1,T,L),!.


