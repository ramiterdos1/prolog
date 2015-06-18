fact(0,N,N).
fact(1,N,N).
fact(X,Y,N):-X1 is X-1, Y1 is X*Y,fact(X1,Y1,N).
factorial_(X,N) :-fact(X,1,N).
not_(true,false).
not_(false,true).
perm(N,M,ANS):-factorial_(N,N1),M1 is N-M,factorial_(M1,N2),ANS is N1/N2.
combi(N,M,ANS):-perm(N,M,A1),factorial_(M,A2),ANS is A1/A2.

