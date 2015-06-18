cutlast([],[]).
cutlast([H],[]).
cutlast([X|[Y|T]],[X|L]) :- cutlast([Y|T],L).
