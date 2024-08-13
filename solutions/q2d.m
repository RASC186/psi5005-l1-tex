clear;
clc;

hbar = 6.62607015E-34;
me = 9.109E-31;
m = 0.067*me;
V0 = (224E-3)*(1.6022E-19);

eta = 3/4;
alpha = sqrt(2*m*V0*(1-eta))/hbar;

L = [0:1E-11:100E-9];
T = (1 + ((sinh(alpha.*L)).^2)./(4*eta.*(1-eta)) ).^-1;

figure(1)
plot(L,T);
title('T x L (m=0.067m_{e}, E=(3/4)V_{0})');
xlabel('L [m]');
ylabel('T');
