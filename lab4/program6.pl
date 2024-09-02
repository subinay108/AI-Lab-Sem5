/*
Procedures
*/

% Max is maximum of X and Y
max_val(X, Y, Max):- 
    X >= Y, Max is X; 
    X < Y, Max is Y.

% (X1,Y1,X2,Y2) gives points are oblique, horizontal or vertical line 
voh_checker(X1, Y1, X2, Y2):- 
    X1 == X2, write('Vertical'), !;
    Y1 == Y2, write('Horizontal'), !;
    write('Oblique').
