my_append([],L,L).
my_append([A|L1],L2,[A|L3]):-my_append(L1,L2,L3).

