clearvars
clc
% Deel 1: vind de eigenfrequentes en de dempingsratios in matlab:

% Algemene parameters:

M_c = 200;
M_w = 80;
K_s = 20*10^4;
C_s = 690;
K_t = 27*10^3;
C_t = 690;

M = [M_w, 0; 0, M_c]
K = [K_s + K_t, -K_s; -K_s, K_s]
C = [C_s + C_t, -C_s; -C_s, C_s]

M1 = [eye(2) zeros(2); zeros(2), M]
K1 = [zeros(2) -eye(2); K C]

[V,D] = eig(K,M)
% Heel de V1, K1.... snap ik nog niet.
[V1, D1] = eig(K1, M1)

omega_1 = sqrt(D(1,1))
omega_2 = sqrt(D(2,2))

xi_1 = real(D1(1,1))/omega_1
xi_2 = real(D1(2,2))/omega_2

% Ik ben niet zeker of dit juist is.

% De grootte van D1(1,1) en D(1,1) zou het zelfde moeten zijn.

