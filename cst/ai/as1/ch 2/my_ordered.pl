my_ordered([]).
my_ordered([X]).
my_ordered([X|[Y|Rest]]) :- 	X=<Y,
				my_ordered([Y|Rest]).


