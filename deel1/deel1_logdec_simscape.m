clc
clearvars


[t,x,x1,x2] = sim('deel1_simscape');
hold off
% Add x2 here for 2 at the same time
plot(t, [x1, x2])

xlabel('Tijd, in seconden')
ylabel('Positie van de massa, in m')
legend('mass 1', 'mass 2')
ax = gca; 
ax.FontSize = 16; 



% De log decrement methode is hier moeilijk toe te passen want het is een
% 2-DoF systeem, ik ga het toch proberen maar het antwoord zal
% hoogstwaarschijnlijk redelijk fout zijn.

% mass 1 (blue)----------------------

% Aantal periodes n
n_massa1 = 5;

% De periode T (aflezen)
T_massa1 = (3.336 - 0)/n_massa1;

% x(t0) en x(t1)
xt0_massa1 = 0 + 0.1;
xt1_massa1 = -0.0972456 + 0.1;
% Delta

delta_massa1 = (1/n_massa1) * log( (xt0_massa1)/(xt1_massa1) );

% Omega_d, omega_n en demping.

omega_d_massa1 = (2*pi)/(T_massa1)
omega_n_massa1 = (sqrt(4*(pi^2)+(delta_massa1^2)))/T_massa1
demping_massa1 = (delta_massa1)/(sqrt(4*(pi^2)+(delta_massa1^2)))

% mass 2 (blue/orange)----------------------

% Aantal periodes n
n_massa2 = 6;

% De periode T (aflezen)
T_massa2 = (3.997 - 0)/n_massa2;

% x(t0) en x(t1)
xt0_massa2 = 0 + 0.1;
xt1_massa2 = -0.0987812 + 0.1;
% Delta

delta_massa2 = (1/n_massa2) * log( (xt0_massa2)/(xt1_massa2) );

% Omega_d, omega_n en demping.

omega_d_massa2 = (2*pi)/(T_massa2)
omega_n_massa2 = (sqrt(4*(pi^2)+(delta_massa2^2)))/T_massa2
demping_massa2 = (delta_massa2)/(sqrt(4*(pi^2)+(delta_massa2^2)))



