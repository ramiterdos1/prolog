multi([],0):-!.
multi([H],H).
multi([H|T],N):-multi(T,N1),N is N1*H.
