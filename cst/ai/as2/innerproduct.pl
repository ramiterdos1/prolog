innerproduct(_,[],0).
innerproduct([],_,0).
innerproduct([X|L1],[Y|L2],A) :- innerproduct(L1,L2,A1), A is A1+X*Y. 
