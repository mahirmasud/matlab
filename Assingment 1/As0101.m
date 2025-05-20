%Mohammed Masud Chowdhury Mahir (2215151105)
x = -10:0.1:10;

f1 = 2*x + 3;
f2 = x.^2 - 5*x + 2;

plot(x,f1,'-b');
hold on;
plot(x,f2,'r--');
xlabel('x');
ylabel('f(x)');
title('Plot of Linear and Quadratic');
legend('f1(x) = 2x + 3','f2(x) = x^2 - 5x + 2');


syms k;
k1 = 2*k + 3;
k2 = k.^2 - 5*k+ 2;

sol = double(solve(k1 == k2 , k));

disp(sol);
