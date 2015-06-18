multiplyElements([],0).
multiplyElements([X],X).
multiplyElements([H|T],Prod):-multiplyElements(T,Prod1),Prod is H*Prod1.
