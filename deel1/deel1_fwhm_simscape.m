clc
clearvars

[t,x,x1,x2] = sim('deel1_simscape');
N = size(x,1);
T = t(end);
omega = [0:(N-1)]./T*2*pi;
plot(omega,db(fft(x(:,[1 2]))./(N./2)) );

legend('x_1','x_2')
xlabel('Frequentie, in radialen/seconden')
ylabel('Amplitude van de positie, in dB')
ax = gca; 
ax.FontSize = 24; 

% Eerste resonantie: x2

omega_d_1 = 9.48761;

omega_2_1 = 10.6468;
omega_1_1 = 8.46799;

demp_1 = (omega_2_1 - omega_1_1)/(2*omega_d_1)
omega_n_1 = (omega_d_1)/(sqrt(1-demp_1^2))


% Tweede resonantie: x1

omega_d_2 = 60.6145;

omega_2_2 = 69.7766;
omega_1_2 = 52.2068;

demp_2 = (omega_2_2 - omega_1_2)/(2*omega_d_2)
omega_n_2 = (omega_d_2)/(sqrt(1-demp_2^2))

