vertex((1..3,1..3)).

edge(X,Y) :- edge(Y,X).
edge((1,1),(1,2)).
edge((1,2),(1,3)).
edge((1,1),(2,1)).
edge((2,1),(3,1)).
edge((2,1),(2,2)).
edge((1,2),(2,2)).
edge((1,3),(2,3)).
edge((2,2),(2,3)).
edge((2,2),(3,2)).
edge((2,3),(3,3)).
edge((3,1),(3,2)).
edge((3,2),(3,3)).

agent(a1).
#const horizon=5.
start(a1,(1,1)).
goal(a1,(3,3)).
