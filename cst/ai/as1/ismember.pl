our_member(X,[X|_]).
our_member(X,[_|L1]):- our_member(X,L1).

