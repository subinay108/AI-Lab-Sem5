% Write a Prolog Code to check whether two nodes are connected or not in a graph

edge(a, b).
edge(a, c).
edge(a, d).
edge(c, d).
edge(d, b).
edge(f, b).
edge(b, c).

path(A, B, V):-
    edge(A, X), 
    not(member(X, V)),
    (B = X; path(X, B, [A|V])),
    write(A), write('--'), writeln(X).

is_connected(X, Y):-
    path(X, Y, []).

