clauses:
begin.
hcf(X,Y,Z):- X=Y ,Z is Y.
hcf(X,Y,Z):- X>Y ,R is X mod Y, D is X - R, hcf(Y,D,Z).
hcf(X,Y,Z):- X<Y ,R is X mod Y, D is Y - R, hcf(X,D,Z).
lcm(X,Y,L):- hcf(X,Y,Z) ,L is X*Y/Z.
