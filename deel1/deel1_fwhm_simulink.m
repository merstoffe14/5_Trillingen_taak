clc
clearvars

[t,x] = sim('deel1_simulink');

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

omega_d_1 = 9.48761

omega_2_1 = 10.5655
omega_1_1 = 8.40356

demp_1 = (omega_2_1 - omega_1_1)/(2*omega_d_1)
omega_n_1 = (omega_d_1)/(sqrt(1-demp_1^2))


% Tweede resonantie: x1

omega_d_2 = 61.9343

omega_2_2 = 72.448
omega_1_2 = 53.7191

demp_2 = (omega_2_2 - omega_1_2)/(2*omega_d_2)
omega_n_2 = (omega_d_2)/(sqrt(1-demp_2^2))

