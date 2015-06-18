replace([],_,_,[]).
replace([X|T],X,Y,[Y|T]) :- !.
replace([H|T],X,Y,[H|L1]) :- replace(T,X,Y,L1).
