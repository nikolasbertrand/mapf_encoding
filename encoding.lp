%facts

%vertex((X,Y)).

spath(A,(X,Y), (X+DX,Y+DY),T):- agent(A), time(T), vertex((X,Y)), dir(DX,DY).
time(0..3). 


dir(-1..1,-1..1).
1 { spath(A,(X,Y), (X+DX,Y+DY),T+1) : time(T), dir(DX,DY)} 1 :- start(A,(X,Y)), 
																 spath(A,(X,Y),(X',Y'),T), 
																 not time(horizon).


:- spath(_,(_,_),(X,Y),_), not vertex((X,Y)).  
:- spath(A,(_,_),(X,Y),horizon), not goal(A,(X,Y)).

%constraints

#show spath/4.
#show vertex/1.
#show time/1.
#show dir/2.

