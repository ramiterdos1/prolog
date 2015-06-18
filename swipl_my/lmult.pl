lmult([],X,X).
lmult(L,X):-lmult(L,1,X).
lmult([X|L1],P,N):-P1 is P*X,lmult(L1,P1,N).
