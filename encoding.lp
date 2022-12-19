%facts

time(0..horizon). 

%movement. 
1 {spath(A,Z,Y,1) : start(A,(Z)), edge(Z,Y)}1.

1{ spath(A,X,Y,T+1) : edge(X,Y), agent(A)} 1 :- 
			not start(A,(X)), spath(A,_,X,T),time(T), T < horizon, not goal(A,X).

%constraints
:- spath(_,(_,_),(X,Y),_), not vertex((X,Y)).  
:- spath(A,Y,X,T), spath(A,X,Y,T-1).

%:- spath(R1,X,Y,T), spath(R2,X,Y,T), R1 != R2. 
%:- spath(R1,X,Y,T-1), spath(R2,X',Y',T), X != X', Y != Y'.  
%minimize

#minimize {1, T : spath(_,_,_,T)}.

#show spath/4.
%#show vertex/1.
%#show time/1.

