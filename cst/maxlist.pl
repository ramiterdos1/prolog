maxlist([X|Rest],Max):-maxlist(Rest,MaxRest),max(X,MaxRest,Max).
