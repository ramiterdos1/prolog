my_delete(_,[],[]).
my_delete(A,[A|L],M) :- !,my_delete(A,L,M).
my_delete(A,[B|L],[B|M]) :- my_delete(A,L,M). 


