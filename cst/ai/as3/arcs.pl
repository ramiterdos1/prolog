header([X|T],P,N) :- myarcs([X|T],P,N), !.
header([X|T],P,N):-header(T,P,N).

myarcs([],[],N).
myarcs([X|[Y|T]],P,N) :-path(X,Y,P),count(P)==N,!.
myarcs([X|[Y|T]],P,N) :- myarcs([X|T],P,N).

path(A,B,Path) :-
       travel(A,B,[A],Q), 
       reverse(Q,Path).
travel(A,B,P,[B|P]) :- 
       arc(A,B).
travel(A,B,Visited,Path) :-
       arc(A,C),           
       C =\= B,
       \+member(C,Visited),
       travel(C,B,[C|Visited],Path). 

count([],0).
count([X|Y],N) :- count(Y,N1), N is N1+1.
