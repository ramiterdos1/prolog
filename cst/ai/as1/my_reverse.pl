my_reverse([],[]).
my_reverse([H|T],L) :- 	my_reverse(T,Z),
			my_append(Z,[H],L).
 

