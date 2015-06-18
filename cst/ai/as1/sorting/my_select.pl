my_select(_,[],[]).
my_select(X,[X|T],T).
my_select(X,[H|T],[H|T1]) :- my_select(X,T,T1).
