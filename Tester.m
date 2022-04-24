cll;
%% Joaquin Paz
%% Cornell University, ENGRD 2020
%% COMPOSITE BEAM STRESS CALCULATOR
%% Function Calling File

E1 = 200*10^9; % Pascals, Steel
E2 = 2.4*10^9; % Pascals, PolyCarb
s_max_strong = 250*10^6; % Pascals, Stress of stronger material 
s_max_weak = 62*10^6; % Pascals, Stress of weaker material 
cost_s = 0.25; % $/kg, Steel
cost_w = 2; % $/kg, PolyCarb
density_s = 8; % Density of the stronger material in g/cm^3
density_w = 1.2; % Density of the weaker material in g/cm^3

% beam_data(E1,E2,s_max_strong,s_max_weak,cost_s,cost_w,density_s,density_w)



St_E = 200*10^9; % Pascals, Steel
St_s_max = 250*10^6; % Pascals, Stress of Steel
St_cost = 0.25; % $/kg, Steel
St_density = 8; % Density of Steel in g/cm^3

F_E = 70*10^9; % Pascals, Fiberglass
F_s_max = 210*10^6; % Pascals, Stress of Fiberglass 
F_cost = 40; % $/kg, Fiberglass
F_density = 2.6; % Density of Fiberglass in g/cm^3

P_E = 2.4*10^9; % Pascals, PolyCarb
P_s_max = 62*10^6; % Pascals, Stress of weaker material 
P_cost = 2; % $/kg, PolyCarb
P_density = 1.2; % Density of the weaker material in g/cm^3

Si_E = 0.001*10^9; % Pascals, Silicone
Si_s_max = 3*10^6; % Pascals, Stress of Silicone
Si_cost = 50; % $/kg, Silicone
Si_density = 1.5; % Density of Silicone in g/cm^3

%% Fiberglass and Polycarb
beam_data(F_E,P_E,F_s_max,P_s_max,F_cost,P_cost,F_density,P_density)

%% Steel and Silicone
% beam_data(St_E,Si_E,St_s_max,Si_s_max,St_cost,Si_cost,St_density,Si_density)

%% Polycarb and Silicone
% beam_data(P_E,Si_E,P_s_max,Si_s_max,P_cost,Si_cost,P_density,Si_density)

%% Steel and Fiberglass
% beam_data(St_E,F_E,St_s_max,F_s_max,St_cost,F_cost,St_density,F_density)





