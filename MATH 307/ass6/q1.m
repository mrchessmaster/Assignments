v1 = [-1,1,-1];
v2 = [1,-1,0];
v3 = [0,-1,1];
eigs = diag([2,3,3]);

S = [v1', v2', v3'];

% A*S = S*eigs

A = S*eigs*inv(S);
