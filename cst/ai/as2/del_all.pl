del_all([],_,[]).
del_all([H|T],X,L1):-del_all(T,X,L1),H=X,!.
del_all([H|T],X,[H|L1]):-del_all(T,X,L1).
