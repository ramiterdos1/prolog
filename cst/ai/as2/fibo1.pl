
fibb1(0,0).
fibb1(1,1).
fibb1(N,Ans):-fibbacc(N,2,1,0,Ans).
fibbacc(N,N,A1,A2,Ans):-!,Ans is A1+A2.
fibbacc(N,I,A1,A2,Ans):-I<N,I1 is I+1,A3 is A1+A2,fibbacc(N,I1,A3,A1,Ans).


