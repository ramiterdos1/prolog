member(X,[X|T]).
member(X,[H|T]):-member(X,T).

rmvdup([H|L],L1):- rmvdup(L,[H],L1).
rmvdup([],L,L).
rmvdup([H|T],A,L1):-member(H,A),!,rmvdup(T,A,L1).
rmvdup([H|T],A,L1):- rmvdup(T,[H|A],L1).

