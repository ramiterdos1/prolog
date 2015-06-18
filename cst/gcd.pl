gcd(X,X,X).
gcd(X,Y,Z):-X<Y,Y1 is Y-X,gcd(X,Y1,Z).
gcd(X,Y,Z):-X>Y,gcd(Y,X,Z).
