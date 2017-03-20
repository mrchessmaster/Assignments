clear all;
close all;

A = [-2,-6,-5,-6,-10;
    -6,-2,-5,-5,3;
    -5,-5,2,-9,-2;
    -6,-5,-9,-4,-14;
    -10,3,-2,-14,-4];

x = [1,1,1,1,1]';
eig_est = ones(20,1);

for i = 1:20
    x = A*x/norm(A*x);
    curEig = norm(A*x)/norm(x);
    eig_est(i) = curEig;
end
    
j = linspace(1,20,20);
plot(j, eig_est, 'o');