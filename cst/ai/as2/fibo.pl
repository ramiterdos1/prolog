fibo(0,0).
fibo(1,1).
fibo(N,A) :- N1 is N-1, fibo(N1,A1), N2 is N-2, fibo(N2,A2), A is A1+A2. 
