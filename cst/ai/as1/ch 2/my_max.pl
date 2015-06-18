my_max(X,X,X).
my_max(X,Y,X) :- X>=Y.
my_max(X,Y,Y) :- X<Y.

