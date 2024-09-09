/*
Write a program in Prolog
1. Factorial of N <- user input
2. Fibonacii N-th term where N is user input
*/

% Factorial of N
factorial(0, 1).
factorial(N, F):-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

% Fibonacci N-th term
fibonacci(1, 0).
fibonacci(2, 1).
fibonacci(N, F):-
    N > 2,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

% Print N Fibonacci Numbers
fibonacci_N(A, B, N):-
    N > 0,
    N1 is N - 1,
    T is B,
    T1 is A + B,
    write(A), write(' '),
    fibonacci_N(T, T1, N1).

% Fibonacci upto N-th term
fib(A, B, N, L):-
    N > 0,
    N1 is N - 1,
    T is B,
    T1 is A + B,
    append(L, [A], L),
    L = L1,
    fib(T, T1, N1, L).

fibonacci_list(1, [0]).
fibonacci_list(N, L):-
    N > 1,
    L = [0],
    fib(0, 1, N, L).

% Range
% range(1, [1]).
% range(N, [1 | Rest]):-
%     N > 1, 
%     N1 is N - 1,
%     range(N1, Rest).

