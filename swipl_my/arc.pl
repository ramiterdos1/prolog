
getarC([arc(X,Y)|Others],P) :-
   chk(arc(X,Y),Others,[arc(X,Y)|Path],P),
   getarC(Others,P).
getarC([],[]).
getarC([arc(X,Y)],[]).

chk(_,[],A,A).
chk(arc(X,Y),[arc(Y,Z)|Others],[arc(Y,Z)|Path],P):-
   chk(arc(Y,Z),Others,Path,P).
chk(arc(X,Y),[arc(Y1,_)|Others],Path,P):-chk(arc(X,Y),Others,Path,P).    




