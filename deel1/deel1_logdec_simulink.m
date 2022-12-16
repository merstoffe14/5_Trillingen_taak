clc
clearvars

[t,x,f] = sim('deel1_simulink');

% hold on
% Add a ,2 here for 2 at the same time
plot(t, x(:, [1,2]))
% de 2 verplaatsingen zijn de 1ste en 2de kolom in x denk ik.
xlabel('Tijd, in seconden')
ylabel('Positie van de massa, in m')
legend('mass 1', 'mass2')
ax = gca; 
ax.FontSize = 16; 
% We zien dat 7 seconden wat lang is, maar geen probleem.

% De log decrement methode is hier moeilijk toe te passen want het is een
% 2-DoF systeem, ik ga het toch proberen maar het antwoord zal
% hoogstwaarschijnlijk redelijk fout zijn.

% mass 1 (blue)----------------------

% Aantal periodes n
n_massa1 = 8;

% De periode T (aflezen)
T_massa1 = (3.387 - 0)/n_massa1;

% x(t0) en x(t1) (aflezen)
xt0_massa1 = 0.1;
xt1_massa1 = 0.000761668;

% Delta
delta_massa1 = (1/n_massa1) * log( (xt0_massa1)/(xt1_massa1) );

% Omega_d, omega_n en demping.
omega_d_massa1 = (2*pi)/(T_massa1);
omega_n_massa1 = (sqrt(4*(pi^2)+(delta_massa1^2)))/T_massa1
demping_massa1 = (delta_massa1)/(sqrt(4*(pi^2)+(delta_massa1^2)))

% mass 2 (blue/orange)----------------------

% Aantal periodes n
n_massa2 = 7;

% De periode T (aflezen)
T_massa2 = (4.055 - 0)/n_massa2;

% x(t0) en x(t1)
xt0_massa2 = 0.052;
xt1_massa2 = 0.000405885;
% Delta

delta_massa2 = (1/n_massa2) * log( (xt0_massa2)/(xt1_massa2) );

% Omega_d, omega_n en demping.

omega_d_massa2 = (2*pi)/(T_massa2);
omega_n_massa2 = (sqrt(4*(pi^2)+(delta_massa2^2)))/T_massa2
demping_massa2 = (delta_massa2)/(sqrt(4*(pi^2)+(delta_massa2^2)))



