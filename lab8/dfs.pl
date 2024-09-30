edge(1, 2).
edge(1, 4).
edge(2, 5).
edge(2, 3).
edge(4, 5).
edge(5, 6).

connected(X, Y):- edge(X, Y).
connected(X, Y):- edge(Y, X).

dfs(S, G, Path):- dfs(S, G, [S], Path).
dfs(G, G, Visited, Path):- reverse(Visited, Path).
dfs(S, G, Visited, Path):- 
    connected(S, N),
    \+ member(N, Visited), 
    dfs(N, G, [N|Visited], Path).