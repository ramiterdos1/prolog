
my_maxlist([],0).
my_maxlist([X|Rest],Max) :- 	my_maxlist(Rest,MaxRest),
				

my_max(X,MaxRest,Max).
