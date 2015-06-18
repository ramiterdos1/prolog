my_length(L,N) :- my_length_acc(L,0,N).
my_length_acc([],A,A).
my_length_acc([X|L],A,N) :- A1 is A+1,
			my_length_acc(L,A1,N).

