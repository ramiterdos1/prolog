multlist([],0) :- !.
multlist([H],H).
multlist([H|T],N) :- multlist(T,N1), N is H*N1.
