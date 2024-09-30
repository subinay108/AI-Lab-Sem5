
% Depth First Search
neighbor(a, [b, c]).
neighbor(b, [a, c]).
neighbor(c, [a, b, d, e]).
neighbor(d, [c]).
neighbor(e, [c]).

% Push
push(Return, List, Item):-
    Return = [Item | List].

% Pop
pop(Return, [_|Rest]):-
    Return = Rest.

% is_empty
is_empty([]).

% Is the item present in the list
is_mem([X|_], X):- !.
is_mem([_|L1], X):- is_mem(L1, X).

% length of a list
len([], 0).
len([_|Tail], Length):-
    len(Tail, L1),
    Length is 1 + L1.

% delete an item from a lis
delete(Tail, [X|Tail], X):- !.
delete(Return, [Head|Tail], X):-
    delete(R1, Tail, X),
    Return = [Head | R1].


dfs(Node, Visited):-
    Visited = [],
    write(Node),
    write('->'),
    neighbor(Node, [N1|_]),
    dfs(N1).

demo(X, X).
    