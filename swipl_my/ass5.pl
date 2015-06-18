cutlast([],[]).
cutlast([X],[]).
cutlast([X|Rest],[X|Rest1]):-cutlast(Rest,Rest1),!.

trim(N,[],[]).
trim(0,L,L):-!.
trim(N,[H|Rest],L):-M is N-1, trim(M,Rest,L),!.

trimlast(N,[],[]).
trimlast(N,L,[]):-mylength(L,N),!.
trimlast(N,[H|T],[H|Rest]):-trimlast(N,T,Rest),!.

mylength([],0).
mylength([H|T],N):-mylength(T,M), N is M+1.

