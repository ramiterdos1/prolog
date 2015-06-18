del(arc(X,Y),[arc(X,Y)|L1],L1).
del(arc(X,Y),[arc(Z,U)|L1],[arc(Z,U)|L2]):-del(arc(X,Y),L1,L2).
del(arc(X,Y),[arc(Z,Y)|L1],[arc(Z,Y)|L2]):-del(arc(X,Y),L1,L2).
del(arc(X,Y),[arc(X,Z)|L1],[arc(X,Z)|L2]):-del(arc(X,Y),L1,L2).

permutate([],[]).                 
permutate(L,[arc(X,Y)|P]):-del(arc(X,Y),L,L1),permutate(L1,P).




reverse([],[]).
reverse([X|Rest],Out1):-reverse(Rest,Out),append(Out,[X],Out1).


matcharc([arc(X,Y)]).
matcharc([arc(X,Y)|[arc(Y,Z)|Rest]]):-matcharc([arc(Y,Z)|Rest]).

out(L,L).

match_arc(Input,Output):-permutate(Input,L),matcharc(L),!,out(L,Output).

cyclicarc([arc(X,Y)|Rest]):-matcharc([arc(X,Y)|Rest]),reverse([arc(X,Y)|Rest],List1),listcheck([arc(X,Y)|Rest],List1).

listcheck([arc(X,Y)|_],[arc(Z,X)|_]).

match_cyclic_arc(Input,Output):-permutate(Input,L),cyclicarc(L),!,out(L,Output).