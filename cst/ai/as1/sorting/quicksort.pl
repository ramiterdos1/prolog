quicksort(L,L1):-quickacc(L,[],L1).
quickacc([],A,A).
quickacc([H|T],A,L1):-partition(T,LT,H,GT),quickacc(GT,A,GTSORTED),quickacc(LT,[H|GTSORTED],L1).
partition([],[],_,[]).
partition([H|T],[H|TLT],X,GT):-H=<X,!,partition(T,TLT,X,GT).
partition([H|T],LT,X,[H|TGT]):-H>X,partition(T,LT,X,TGT).
