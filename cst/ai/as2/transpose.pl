transpose([],[],[]).
transpose([X|L1],[Y|L2],[(X,Y)|L]) :- transpose(L1,L2,L).

