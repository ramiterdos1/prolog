my_gcd(X,X,X).
my_gcd(X,Y,Z) :- 
		X<Y,
		Y1 is Y-X,
		my_gcd(X,Y1,Z).
my_gcd(X,Y,Z) :- 
		X>Y,
		my_gcd(Y,X,Z).

