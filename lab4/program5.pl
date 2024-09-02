/*

*/

male(t).
male(b).
male(j).

female(p).
female(l).
female(a).
female(q).

parent(p, b).
parent(t, b).
parent(t, l).
parent(b, a).
parent(b, q).
parent(q, j).

% X is the father of Y
father(X, Y):- parent(X, Y), male(X).

% X is the mother of Y
mother(X, Y):- parent(X, Y), female(X).

% X and Y are siblings
siblings(X, Y):- 
    setof(Y, P^ (parent(P, X), parent(P, Y), X \== Y), Ys),
    member(Y, Ys).

% X is the brother of Y
brother(X, Y):- siblings(X, Y), male(X).

% X is the sister of Y
sister(X, Y):- siblings(X, Y), female(X).

% X has child i.e. X is a parent
has_child(X):- parent(X, _).