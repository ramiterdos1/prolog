myefface(_,[],[]).
myefface(A,[A|L],L) :- !.
myefface(A,[B|L],[B|M]) :- myefface(A,L,M).
