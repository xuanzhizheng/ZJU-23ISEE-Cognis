%Lab1 P6

function y = diffeqn(a, x, yn1)
    N = length(x);
    y = zeros(1, N);
    y(1) = a * yn1 + x(1);

    for i = 2:N
        y(i) = a * y(i-1) + x(i);
    end
end

n = 0:30;
x1 = (n == 0);
x2 = (n >= 0);
yn1 = 0;
a = 1;
y1 = diffeqn(a, x1, yn1);
y2 = diffeqn(a, x2, yn1);

figure;
subplot(2,1,1);
stem(n, y1,"filled");
title('Response to x1[n] = \delta[n]');
xlabel('n');
ylabel('y1[n]');

subplot(2,1,2);
stem(n, y2,"filled");
title('Response to x2[n] = u[n]');
xlabel('n');
ylabel('y2[n]');