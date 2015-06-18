my_substitute(_,[],_,[]).
my_substitute(A,[A|L],B,[B|M]) :- !, my_substitute(A,L,B,M).
my_substitute(A,[C|L],B,[C|M]) :- my_substitute(A,L,B,M).

 
