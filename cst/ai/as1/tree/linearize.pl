linearize(nil,[]).
linearize(bt(Left,Root,Right),List):-linearize(Left,List1),linearize(Right,List2),append(List1,[Root|List2],List).
