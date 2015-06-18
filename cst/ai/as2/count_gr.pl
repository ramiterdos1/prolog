count_gr([],0).
count_gr([H|T],N):-count_gr(T,N1),H>100,N is N1+1,!.
count_gr([H|T],N):-count_gr(T,N).
