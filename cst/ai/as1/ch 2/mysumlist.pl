mysumlist([],0).
mysumlist([H|T],S) :- 	mysumlist(T,Tsum),
			S is H+Tsum.
