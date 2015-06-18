interleave([],L,L).
interleave(L,[],L).
interleave([X|L1],[Y|L2],[X|[Y|L]]) :- interleave(L1,L2,L).
