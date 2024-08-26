male(a).
male(b).
male(f).
male(c).

female(z).
female(d).
female(e).

parent(a, b).
parent(a, c).
parent(z, c).
parent(z, b).
parent(b, f).
parent(c, e).
parent(d, e).

% X and Y are couple
couple(X, Y):- 
    parent(X, Z), 
    parent(Y, Z), 
    male(X), 
    female(Y); 
    parent(X, Z), 
    parent(Y, Z),
    male(Y),
    male(X).

% xor function
xor(X, Y):- (X, \+ Y); (\+ X, Y).

% X is father of Y
father(X, Y):- parent(X, Y), male(X).

% X is mother of Y
mother(X, Y):- parent(X, Y), female(X).

% X and Y have common parent
common_parent(X, Y):- parent(Z, X), parent(Z, Y).

% X is brother of Y
brother(X, Y):- common_parent(X, Y), male(X), X \== Y, X @< Y.
                

% X is uncle of Y
uncle(X, Y):- parent(Z, Y), brother(X, Z).



% X is grandmother of Y
grandmother(X, Y):- mother(Z, Y), mother(X, Z).

% X is cousin of Y
% cousin(X, Y):- 