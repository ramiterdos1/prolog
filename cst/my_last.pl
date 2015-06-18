my_last([X],X).
my_last([_|Rest],X):-my_last(Rest,X).
