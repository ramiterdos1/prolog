insert_bst(nil,X,bst(nil,X,nil)).
insert_bst(bst(Left,Root,Right),X,bst(Left1,Root,Right)):-X=<Root,insert_bst(Left,X,Left1).
insert_bst(bst(Left,Root,Right),X,bst(Left,Root,Right1)):-X>Root,insert_bst(Right,X,Right1).
