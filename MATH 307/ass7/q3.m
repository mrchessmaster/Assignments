A = [0,1,0;1,0,0];

B = A'*A;

[V, D] = eig(B);

sigma = [D(2,:); D(3,:)];

svd(A);



% eigs = eig(B);
% 
% eigv1 = [eigs(1), 1, 1]';
% eigv2 = [eigs(2), 1, 1]';
% eigv3 = [eigs(3), 1, 1]';
