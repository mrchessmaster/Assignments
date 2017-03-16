% q6

clear all
close all
load systolic.mat

plot(w, p, 'ok','linewidth',2)

len = length(w);
A = [ones(len,1), log(w)];

xbar = inv(A'*A)*A'*p;

b0 = xbar(1); b1 = xbar(2);

% b0 = 19.5539
% b1 = 19.6045


pred = b0 + b1*log(85);

% estimated systolic blood pressure is 106.6501 mmHg


