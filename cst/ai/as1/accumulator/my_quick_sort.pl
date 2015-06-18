my_quick_sort(L,L1) :- my_quick_acc(L,[],L1).
my_quick_acc([],A,A).
my_quick_acc([H|T],A,L1) :- my_partition(T,Lt,H,Gt).
my_quick_acc(Gt,A,GtSorted).
my_quick_acc(Lt,[H|GtSorted],L1).

my_partition([],[],_,[]).
my_partition([H|T],[H|TLt],X,Gt) :- H<=X, !, my_partition(T,TLt,X,Gt).

my_partition([H|T],Lt,X,[H|TGt]) :- 	H>X,
				my_partition(T,Lt,X,TGt).