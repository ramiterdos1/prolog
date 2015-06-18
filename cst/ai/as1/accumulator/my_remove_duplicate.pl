my_remove_duplicate(L,L1) :- my_remove_acc(L,[],L1).
my_remove_acc([H|T],A,L1) :- my_our_member(H,A),!, my_remove_acc(T,A,L1).
my_remove_acc([H|T],A,L1) :- my_remove_acc(T,[H|A],L1). 

