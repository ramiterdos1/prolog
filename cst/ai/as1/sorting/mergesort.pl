mergesort([],[]).
mergesort([X],[X]).
mergesort(L,Sorted) :- divide(L,L1,L2),
			mergesort(L1,SortedL1),
			mergesort(L2,SortedL2),
			merge(SortedL1,SortedL2,Sorted).
divide([],[],[]).
divide([X],[X],[]).
divide([X|[Y|Rest]],[X|L1],[Y|L2]):-divide(Rest,L1,L2).
merge([],[],[]).
merge(L,[],L).
merge([],L,L).
merge([X|L1],[Y|L2],[X|L3]):-X<Y,!,merge(L1,[Y|L2],L3).
merge([X|L1],[Y|L2],[Y|L3]):-X>Y,!,merge([X|L1],L2,L3).
merge([X|L1],[Y|L2],[X|[Y|L3]]):-X=Y,merge(L1,L2,L3).
