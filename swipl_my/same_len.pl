same_len([],[]).
same_len([_|X],[_|Y]) :- same_len(X,Y).
