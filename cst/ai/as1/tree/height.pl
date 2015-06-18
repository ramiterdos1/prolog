height(nil,0).
height(bt(Left,Root,Right),H):-height(Left,LH),height(Right,RH),max(LH,RH,NH),H is NH+1.
max(X,Y,X):-X>=Y,!.
max(X,Y,Y):-X<Y.
