neLem(L,N,X) :- nelem(L,N,1,X).
nelem([H|T],N,N,H) :- !.
nelem([H|T],N,A,X) :- A1 is A+1, nelem(T,N,A1,X).

p(1,2).
p(a,b).
p(2,1).
max(X,X,X):-!.
max(X,Y,X):-X>Y,!.
max(X,Y,Y).
p(c,b).
reverse([],L,L).
reverse([H|T],L,L1):-reverse(T,[H|L],L1).

sum_N(L,N,S):- sum_N(L,N,0,0,S).
sum_N(L,N,N,S,S).
sum_N([H|T],N,A,S,X):- A<N,A1 is A+1,S1 is S+H,sum_N(T,N,A1,S1,X).

noT(P):-P,!,fail.
insertN(L,N,X,L1):-insertN(L,N,X,1,L1).
insertN([H|T],N,X,A,[H|[X|L1]]):-A is N ,A1 is A+1,insertN(T,N,X,A1,L1).
insertN([H|T],N,X,A,[H|L1]):-A =\= N,A1 is A+1,insertN(T,N,X,A1,L1).
insertN([],N,X,A,[]).

appnd([],L,L).
appnd([H|T],L,[H|L1]):-appnd(T,L,L1).


