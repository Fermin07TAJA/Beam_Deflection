function [max_moment_s, max_moment_w,d_max_l,d_max_w,weight_crossec,w_s,w_w] = ...
    m_max(w1,t1,t_max,E1,E2,stress_max_s,stress_max_w,P,L,density_s,density_w)
%% Joaquin Paz
%% Cornell University, ENGRD 2020
%% COMPOSITE BEAM STRESS CALCULATOR
%% Maximum Moment Calculator File
h = t_max-2*t1; % Thickness of weaker material
y_strong = h/2 + t1;
y_weak = h/2;
y_strong = y_strong/100; % cm to meters
y_weak = y_weak/100; % cm to meters

% Calculating Weight
% Length*cross sectional area*density
w_s = (2*t1*w1*density_s); % Weight from grams
w_w = (h*w1*density_w); % Weight in grams
weight_crossec = w_s + w_w; % Weight in grams

moment_inertia = m_inertia(w1,t1,t_max,E1,E2,h); % Units of m^4

% stress_max > M*y/I, thus M < I*stress_max/y
max_moment_s = moment_inertia*stress_max_s/y_strong;
max_moment_w = moment_inertia*stress_max_w/y_weak;

d_max_l = P*(L)^3/(3*E1*moment_inertia); % N*m^3/(Pascal N/m^2)(inertia m^4)
d_max_w = weight_crossec*(L)^4/(8*E1*moment_inertia);
