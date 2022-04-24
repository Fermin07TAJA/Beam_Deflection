function beam_data(E1,E2,s_max_strong,s_max_weak,cost_s,cost_w,density_s,density_w)
%% Joaquin Paz
%% Cornell University, ENGRD 2020
%% COMPOSITE BEAM STRESS CALCULATOR
%% Calculator and Information Relay File
t_max = 7; % Max Thickness
w1 = 50; % Max Width

safety_factor = 1.5;
s_max_strong = s_max_strong/safety_factor;
s_max_weak = s_max_weak/safety_factor;

P = 800; % Max Load in Newtons
L = 5; % Length in m

exerted_moment = [];

pts = .5:.1:(t_max/2-0.5);
data = [];
for t_int = pts;
    [st,wk,d_max_l,d_max_w,weight,w_s,w_w] = m_max(w1,t_int,t_max,E1,E2,...
        s_max_strong,s_max_weak,P,L,density_s,density_w);
    data = [data; st wk d_max_l,d_max_w,weight,w_s,w_w];
    exerted_moment = [exerted_moment 800*L + weight*L/(L/2)]; % Load and Weight
end

figure(1)
hold on
plot(pts,data(:,1));
plot(pts,data(:,2));
hold off
xlabel('Shelf Thickness (cm)')
ylabel('Moment_{all}')
title('Max Allowable Moment of the Beam vs. Shelf Thickness');
legend('Strong Material','Weak Material');

figure(2)
hold on
plot(pts,data(:,3).*100);
% plot(pts,.09*ones(1,length(data(:,3))));
hold off
xlabel('Shelf Thickness (cm)')
ylabel('Deflection (cm)')
title('Maximum Load Deflection vs. Shelf Thickness');
% legend('Deflection','Max Allowable Deflection');

figure(3)
hold on
plot(pts,data(:,4));
% plot(pts,.09*ones(1,length(data(:,3))));
hold off
xlabel('Shelf Thickness (cm)')
ylabel('Deflection (meters)')
title('Maximum Weight Deflection vs. Shelf Thickness');
% legend('Deflection','Max Allowable Deflection');

figure(4)
plot(pts,data(:,5));
xlabel('Shelf Thickness (cm)')
ylabel('Weight (kg)')
title('Weight vs. Shelf Thickness');

expense = cost_s.*data(:,6) + cost_w.*data(:,7);
figure(5)
plot(pts,expense);
xlabel('Shelf Thickness (cm)')
ylabel('Cost $')
title('Expense vs. Shelf Thickness');

figure(6)
plot(pts,exerted_moment);
xlabel('Shelf Thickness (cm)')
ylabel('Exerted Moment by Load')
title('Exerted Moment vs. Shelf Thickness');
