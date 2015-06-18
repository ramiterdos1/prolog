splt([],[],[]).
splt([],P,N).
splt([X|L],[X|P],N):-X>=0,splt(L,P,N).
splt([X|L],P,[X|N]):-splt(L,P,N).
%splt(L):-splt(L,[],[]).

