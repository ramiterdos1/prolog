splitlist([],[],[]).
splitlist([H|T],[H|L1],L2) :- H>=0,splitlist(T,L1,L2),!.
splitlist([H|T],L1,[H|L2]) :- splitlist(T,L1,L2).
