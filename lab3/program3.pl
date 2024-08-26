/*
a -> b, a -> c, a->boy, c-> e, d -> e, c-> boy, b -> boy, d-> girl

*/

boy(a).
boy(b).
boy(c).

girl(d).
girl(e).

parent(a, b).
parent(a, c).
parent(c, e).
parent(d, e).

% Y is the brother of whom(X)
brother(Y, X):- parent(Z, Y), parent(Z, X), boy(Y), X \== Y.

% Y is the mother of X
mother(Y, X):- parent(Y, X), girl(Y).