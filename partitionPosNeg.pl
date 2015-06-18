partition([],[],[]).
partition([H|T],[H|RemPosList],NegList):-H>=0,!,partition(T,RemPosList,NegList).
partition([H|T],PosList,[H|RemNegList]):-H<0,!,partition(T,PosList,RemNegList).
