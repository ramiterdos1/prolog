selection_sort([],[]).
selection_sort(L,[H|T]):-least(H,L,R),selection_sort(R,T).
least(_,[],[]).
least(X,L,R):- select(X,L,R),smaller(X,R).
smaller(_,[]).
smaller(X,[H|T]):-X<H,smaller(X,T).
