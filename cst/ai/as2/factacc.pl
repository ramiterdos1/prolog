factacc(N,Ans) :- factaccc(N,1,Ans).
factaccc(0,A,A).

factaccc(N,A,Ans) :- A1 is A*N, N1 is N-1,factaccc(N1,A1,Ans).
