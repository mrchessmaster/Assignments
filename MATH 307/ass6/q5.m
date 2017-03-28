clear all;
close all;

load matrixforq5.mat;

x = ones(298,1);

B = A;

for i = 1:10
    y = B\x;
    x = y/norm(y);
end

eig1 = (x'*B*x)/(x'*x);

% The estimate for the eigenvalue is -1.
