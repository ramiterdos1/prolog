select(_,[],[]).
select(X,[X|T],T).
select(X,[Y|T],[Y|T1]):-select(X,T,T1).
