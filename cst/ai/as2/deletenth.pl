deletenth([],_,[]).
deletenth([H|T],N,T) :- N=1,!.
deletenth([H|T],N,[H|L]) :- N1 is N-1, deletenth(T,N1,L).
