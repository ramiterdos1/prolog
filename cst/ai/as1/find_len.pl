my_length([],0).
my_length([X|Rest],p(N)) :- my_length(Rest,N).
