tree_sort(L,L1):-sort_tree(L,nil,L1).
sort_tree([],T,T).
sort_tree([X|Rest],S,L1):-sort_tree(Rest,S,S1),insert_bst(X,S,T1),linearize(T1,L1).
