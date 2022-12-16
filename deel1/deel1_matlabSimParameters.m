clc
clearvars
% w = wheel, c = chassis
M_c = 200;
M_w = 80;
K_s = 20*10^4;
C_s = 690;
K_t = 27*10^3;
C_t = 690;

% m1 is on the ground, the weel
% m2 is in the air,
m1 = M_w;
m2 = M_c;

% t = wheel, s = chassis
k1= K_t;
c1 = C_t;
k2 = K_s;
c2 = C_s;

open_system("deel1_simulink")
names = find_system('deel1_simulink');

% set_param('deel_simulink/x//y','Gain',num2str(x/y))
set_param('deel1_simulink/1//m2','Gain',num2str(1./m2))
set_param('deel1_simulink/c2//m2','Gain',num2str(c2./m2))
set_param('deel1_simulink/k2//m2','Gain',num2str(k2./m2))

set_param('deel1_simulink/1//m1','Gain',num2str(1./m1))
set_param('deel1_simulink/c1//m1','Gain',num2str(c1./m1))
set_param('deel1_simulink/k1//m1','Gain',num2str(k1./m1))
set_param('deel1_simulink/c2//m1','Gain',num2str(c2./m1))
set_param('deel1_simulink/k2//m1','Gain',num2str(k2./m1))









