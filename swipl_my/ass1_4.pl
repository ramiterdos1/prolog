del([],X,[]).
del([X],X,[]).
del([X|T],X,L):-del(T,X,L),!.
del([H|T],X,[H|T1]):-del(T,X,T1).
deleteElement([],[],X).
deleteElement([X],[],X).
deleteElement([X|T],L,X):-deleteElement(T,L,X),!.
deleteElement([Y|T],[Y|L],X):-deleteElement(T,L,X),!.

rep(L,X,Y,L1):-rep(L,X,Y,0,L1).
rep(L,X,Y,A,L1):-A is 1,!, A1 is A+1,rep([X|T],X,Y,A1,[Y|T]).
rep(L,X,Y,A,L1):-rep(L,X,Y,L).

del_n(L,N,L1):-del_n(L,N,0,L1).
del_n([X|T1],N,A,[H|T]):-N is A,!,A1 is A+1,del_n(T1,N,A1,[H|[T|T1]]).
del_n([H|T],N,A,[H1|T1]):-del_n(T,N,A,T1).
