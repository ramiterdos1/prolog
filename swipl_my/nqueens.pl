member(X,[H|T]):-member(X,T).
member(X,[X|T]).

solution([X/Y|Others]):-
   solution(Others),
   member(Y,[1,2,3,4,5,6,7,8]),
   noattack(X/Y , Others).
solution([]).
noattack(X/Y,[X1/Y1 | Others]) :-
    Y =\= Y1,
    X-X1=\=Y-Y1,
    X-X1=\=Y1-Y,
    noattack(X/Y, Others).
noattack(_,[]).

template([1/Y1,2/Y2,3/Y3,4/Y4,5/Y5,6/Y6,7/Y7,8/Y8]).
