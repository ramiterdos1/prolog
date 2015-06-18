mult([],0).
mult([X],X).
mult([H|T],A):-mult(T,A1),A is A1*H.

split([],[],[]).
split([H|T],[H|P],N):-H>=0,!,split(T,P,N).
split([H|T],P,[H|N]):-H<0,split(T,P,N).

count([],0).
count([H|T],C):-H>100,!,count(T,C1),C is C1+1.
count([H|T],C):-count(T,C).

dellist(_,[],[]).
dellist(X,[X|T],T1):-!,dellist(X,T,T1).
dellist(X,[H|T],[H|T1]):-dellist(X,T,T1).

replist(_,[],_,[]).
replist(X,[X|T],Y,[Y|T]):-!.
replist(X,[H|T],Y,[H|T1]):-replist(X,T,Y,T1).

delnlist(_,[],[]).
delnlist(1,[H|T],T).
delnlist(N,[H|T],T1):-N1 is N-1,delnlist(N1,T,T1).

cutlast([],[]).
cutlast([X],[]).
cutlast([H|T],[H|T1]):-cutlast(T,T1).

trim(_,[],[]).
trim(1,[X|T],T).
trim(N,[H|T],T1):-N1 is N-1,trim(N1,T,T1).

reverse([],[]).
reverse([H|T],T1):-reverse(T,Z),append(Z,[H],T1).

append([],L,L).
append([X|L1],L2,[X|L3]):-append(L1,L2,L3).

trimlast(_,[],[]).
trimlast(N,L,L1):-reverse(L,R),trim(N,R,L1).

interleave([],[],[]).
interleave(L,[],L).
interleave([],L,L).
interleave([H1|L1],[H2|L2],[H1|[H2|L]]):-interleave(L1,L2,L).

transpose([],[],[]).
transpose([H1|L1],[H2|L2],[(H1,H2)|L]):-transpose(L1,L2,L).

innerproduct([],_,0).
innerproduct(_,[],0).
innerproduct([H1|T1],[H2|T2],X):-innerproduct(T1,T2,X1),X is X1+H1*H2.

fact(0,1).
fact(N,Ans):-N1 is N-1,fact(N1,A1),Ans is A1*N.

fact1(N,Ans):-factacc(N,1,Ans).
factacc(0,A,A).
factacc(N,A,Ans):-N1 is N-1,A1 is A*N,factacc(N1,A1,Ans).

fibb(0,0).
fibb(1,1).
fibb(N,A):-N1 is N-1,N2 is N-2,fibb(N1,A1),fibb(N2,A2),A is A1+A2.

fibb1(0,0).
fibb1(1,1).
fibb1(N,Ans):-fibbacc(N,2,1,0,Ans).
fibbacc(N,N,A1,A2,Ans):-!,Ans is A1+A2.
fibbacc(N,I,A1,A2,Ans):-I<N,I1 is I+1,A3 is A1+A2,fibbacc(N,I1,A3,A1,Ans).
