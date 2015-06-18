sum([],0).
sum([X|Rest],Sum):-sum(Rest,SumRest),Sum is X+SumRest.
