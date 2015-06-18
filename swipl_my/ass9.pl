%bubble-sort
bubblesort([],[]).
bubblesort([X],[X]).
bubblesort(L,SortedL):-bubbleupNtimes(L,L,SortedL),!.

bubbleupNtimes([],L,L).
bubbleupNtimes([H|T],L,SortedL):-bubbleup(L,L1), bubbleupNtimes(T,L1,SortedL),!.

bubbleup([],[]).
bubbleup([X],[X]).
bubbleup([X|[Y|Rest1]],[Y|Rest2]):-X>Y,bubbleup([X|Rest1],Rest2),!.
bubbleup([X|[Y|Rest1]],[X|Rest2]):-Y>=X,bubbleup([Y|Rest1],Rest2),!.


