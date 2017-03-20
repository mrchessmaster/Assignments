clear all;
close all;

D = diag([2,0]);
S = [1,2;1,1];

A = S*D*inv(S);
inv(A);

A = [3,1;-1,1];

[V,D] = eig(A);


