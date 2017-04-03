% b

N = 100;
A = zeros(N) + diag(1/2*ones(N-1,1),1) + diag(1/2*ones(N-1,1),-1);
A(1,1) = 1/2;
A(N,N) = 1/2;


u = zeros(100,1);
u(50) = 500; 
u(51) = 500;

plot(u);
hold on;

% for i = 1:2000
%     u = A*u;
%     if i == 10 || i == 50 || i == 2000
%         plot(u);
%     end
% end
hold off;


% c

N = 100;
A = zeros(N) + diag(1/2*ones(N-1,1),1) + diag(1/2*ones(N-1,1),-1);
A(1,1) = 1/2;
A(N,N) = 1/2;

u = zeros(100,1);
u(50) = 1000; 
u(51) = 1000;

for i = 1:10000
    u = A*u;
end

plot(u);


% e

N = 100;
A = zeros(N) + diag(1/2*ones(N-1,1),1) + diag(1/2*ones(N-1,1),-1);
A(:,1) = zeros(N,1);
A(:,N) = zeros(N,1);

u = zeros(100,1);
u(50) = 500; 
u(51) = 500;

plot(u);
hold on;

for i = 1:3000
    u = A*u;
    if i == 10 || i == 50 || i == 3000
        plot(u);
    end
end
hold off;


% f

for i = 1:100000
    u = A*u;
end
plot(u);

