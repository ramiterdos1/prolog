count([],0).
count([H|L],X):-H>100,count(L,X1),X is X1+1.
count([H|L],X):-H<101,count(L,X).
