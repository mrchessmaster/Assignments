clear all;
close all;

load matrixforq5.mat;

x = ones(298,1);

for i = 1:30
    x = A*x/norm(A*x);
end

eig1 = (x'*A*x)/(x'*x);

% The estimate for the eigenvalue is -3.5342*10^4
