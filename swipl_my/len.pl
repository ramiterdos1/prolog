len([],0).
len([_|R],X):- X1 is X-1,len(R,X1).
len2([],N,N):-!.
len2([_|R],A,N):-A1 is A+1,len2(R,A1,N).
len_(L,N):-len2(L,0,N).
len3([],0).
len3([_|R],N):-len3(R,N1),N is N1+1.
