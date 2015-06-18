my_reverse([H|T],R):-my_reverse(T,Z),append(Z,[H],R).
my_reverse([],[]).
