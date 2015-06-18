next_to(X,Y,[X|[Y|_]]).
next_to(X,Y,[_|L1]). :- next_to(X,Y,L1).

