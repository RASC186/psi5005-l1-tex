clear;
clc;

hbar = 6.62607015E-34/(2*pi);
me = 9.109E-31;
m = 0.4*me;
V0 = (224E-3)*(1.6022E-19);
L = 10E-10;

E = [0:0.01*V0:V0];

eta = E/V0;

alpha = sqrt(2*m*V0*(1-eta))/hbar;

T = (1 + ((sinh(alpha.*L)).^2)./(4*eta.*(1-eta)) ).^-1;

fig = figure(1)
plot(E,T);
title('T x E (m=0.4m_{e}, V_{0}=0.224[eV], L=1[nm])');
xlabel('E [J]');
ylabel('T');
saveas(fig, 'q2c.png', 'png');
