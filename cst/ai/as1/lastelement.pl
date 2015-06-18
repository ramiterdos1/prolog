last([X],X).
last([_|Rest],X) :- last(Rest, X).

