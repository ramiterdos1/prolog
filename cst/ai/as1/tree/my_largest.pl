my_largest(bst(_,X,nil),X).
my_largest(bst(_,_,Right),Max) :- my_largest(Right,Max).
