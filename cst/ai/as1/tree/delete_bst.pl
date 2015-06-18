delete_bst(bst(nil,X,nil),X,nil).
delete_bst(bst(Left,X,nil),X,Left).
delete_bst(bst(nil,X,Right),X,Right).
delete_bst(bst(Left,X,Right),X,bst(Left,Y,Right1)):-delete_min(Right,Y,Right1).
delete_bst(bst(Left,Root,Right),X,bst(Left1,Root,Right)):-X=<Root,!,delete_bst(Left,X,Left1).
delete_bst(bst(Left,Root,Right),X,bst(Left,Root,Right1)):-X>Root,delete_bst(Right,X,Right1).
delete_min(bst(nil,Y,Right),Y,Right).
delete_min(bst(Lft,Root,Rght),Y,bst(Left1,Root,Right)):-delete_min(Left,Y,Left1).
