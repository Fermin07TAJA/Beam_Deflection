function moment = m_inertia(w1,t1,t_max,E1,E2,h)
%% Joaquin Paz
%% Cornell University, ENGRD 2020
%% COMPOSITE BEAM STRESS CALCULATOR
%% Generates the moment of inertia of a composite board
w2 = (E2/E1)*w1; % Weaker Material Width converted to stronger material
% moment = (1/6)*(t1*w1^3)+(1/12)*(h*w2^3); % M_I of an I-Beam Cross Section
moment = ((1/6)*(w1*t1^3) + w1*t1*(h/2+t1/2)^2 )+(1/12)*(w2*h^3); % M_I of an I-Beam Cross Section

% Conversion from cm to m
moment = moment/(10^8);

