syms a b c d p q x y;
eqns = [(a-b*y)*x-p*x^2 == 0, (c*x-d)*y-q*y^2 == 0];
S = solve(eqns,[x y]);
S.x
S.y