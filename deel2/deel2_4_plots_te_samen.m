clc
clearvars


[t_simulink,x_simulink,f_simulink] = sim('deel2_simulink');
[t_simscape,x_simscape,x1_simscape,x2_simscape] = sim('deel2_simscape');


hold on
plot(t_simulink, x_simulink(:, [1,2]))
plot(t_simscape, [x1_simscape, x2_simscape])


xlabel('Tijd, in seconden')
ylabel('Positie van de massa, in m')
legend('mass 1 simulink', 'mass 2 simulink', 'mass 1 simscape', 'mass 2 simscape')
ax = gca; 
ax.FontSize = 16; 

hold off
