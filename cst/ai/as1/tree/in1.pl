in1(X,bst(nil,X,nil)).
in1(X,bst(Left,X,Right)).
in1(X,bst(Left,Root,Right)):- X<Root,!,in1(X,Left).
in1(X,bst(Left,Root,Right)):- X>Root,in1(X,Right).
