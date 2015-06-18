countint([],0). 
countint([H|T],N) :- countint(T,N1),H>100,N is N1+1,!.
countint([H|T],N) :- countint(T,N).
