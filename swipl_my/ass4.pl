deleteElement([],[],X).
deleteElement([X],[],X).
deleteElement([X|T],L,X):-deleteElement(T,L,X),!.
deleteElement([Y|T],[Y|L],X):-deleteElement(T,L,X),!.

replaceElement([],[],X,Y).
replaceElement([X],[Y],X,Y).
replaceElement([X|Rest],[Y|Rest],X,Y):-!.
replaceElement([Z|Rest1],[Z|Rest2],X,Y):-replaceElement(Rest1,Rest2,X,Y),!.

deleteNElement([],[],N).
deleteNElement([X|Rest1],Rest1,1):-!.
deleteNElement([X|Rest1],[X|Rest2],N):-M is N-1, deleteNElement(Rest1,Rest2,M),!.
