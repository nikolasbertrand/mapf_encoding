%facts

time(0..horizon). 

%movement. 
spath(A,Z,Y,1) :- start(A,(Z)), edge(Z,Y).

1{ spath(A,X,Y,T+1) : edge(X,Y), agent(A)} 1 :- 
			not start(A,(X)), spath(A,_,X,T),time(T).

%constraints
:- spath(_,(_,_),(X,Y),_), not vertex((X,Y)).  
%:- spath(A,X,Y,horizon), not goal(A,Y).

%constraints

#show spath/4.
%#show vertex/1.
%#show time/1.

