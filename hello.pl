% Facts male
male(tarak).
male(kamal).

% Facts female
female(preeti).

% Facts Parent
parent(preeti, tarak).
parent(kamal, tarak).

% Rules for father
father(X, Y) :- parent(Y, X), male(X).

% Program for factorial
factorial(0, 1). % Base case
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

% Program to calculate length of a list
len([], 0).
len([_|Tail], Length):-
    len(Tail, TailLength),
    Length is TailLength + 1.

% Creating a list
my_list([1, 2, 3, 4]).

% Program to calculate sum of a list
sum_list([], 0).
sum_list([Head|Tail], Sum):-
    sum_list(Tail, TailSum),
    Sum is TailSum + Head.

% Program to calculate fibonacci
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F):-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

/*
    This is a multi-line comment
*/