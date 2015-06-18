
my_our_member(X,[X|_]).
my_our_member(X,[_|Rest]) :- my_our_member(X,Rest).
