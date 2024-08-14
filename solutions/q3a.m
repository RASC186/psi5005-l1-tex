clear;
clc;

hbar = 6.62607015E-34/(2*pi);
me = 9.109E-31;
m = 0.4*me;
V0 = (150E-3)*(1.6022E-19);
L = 30E-9;
a = L/2;

R0 = sqrt(2*m*V0)*a/hbar;

X = [0:0.01*R0:R0];

Y_even = X.*tan(X);
Y_odd  = -X.*cot(X);
R_cir  = sqrt(R0.^2 - X.^2);

fig = figure(1);
plot(X,Y_even);
hold on;
plot(X,Y_odd);
hold on;
plot(X,R_cir);
xlim([0 R0]);
ylim([0 R0]);
hold off;
xlabel('X');
ylabel('Y');
legend('Y=X tan(X)','Y=-X cotg(X)','Y=sqrt(R_0 ^2-X_0^2)');
saveas(fig, 'q3a.png', 'png');

X = 1.46;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 2.95;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 4.44;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 5.94;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 7.42;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 8.91;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 10.40;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 11.88;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 13.35;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 14.80;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 16.23;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
X = 17.63;
E = ((X^2)*(hbar^2))/((a^2)*(2*m)) - V0
