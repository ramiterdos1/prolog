inter([],[],[]).
inter(L,[],L).
inter([],L,L).
inter([H1|T1],[H2|T2],[H1|[H2|L]]):-inter(T1,T2,L).

transp([],[],[]).
transp([H1|T1],[H2|T2],[(H1,H2)|L]):-transp(T1,T2,L).

inrprod([],_,0).
inrprod(_,[],0).
inrprod([H1|T1],[H2|T2],X):-inrprod(T1,T2,X1), X is X1+H1*H2.
