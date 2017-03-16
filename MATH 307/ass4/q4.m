% q4
clear all
close all

A = [1,3,2,-8;5,15,6,-32;-1,-3,2,0;3,9,2,-16];
% This is matrix A

B = [A(:,1),A(:,3)];
% Looking at the row reduced echelon form, we can use just 1st and 3rd 
% columns of A, since they span column space of A.

P = B*inv(B'*B)*B';
% Using matrix B, we can find the projection matrix using our result from
% question 3. Since R(B) = R(A), this is also the projection matrix for A, 
% as proven previously.

% P =
% 
%     0.1111    0.2222    0.2222         0
%     0.2222    0.7778    0.1111    0.3333
%     0.2222    0.1111    0.7778   -0.3333
%    -0.0000    0.3333   -0.3333    0.3333
