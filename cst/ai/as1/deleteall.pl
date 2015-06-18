deleteall([],_,[]).
deleteall([X|T],X,L1) :- deleteall(T,X,L1),!.
deleteall([H|T],X,[H|L1]) :- deleteall(T,X,L1).
 
