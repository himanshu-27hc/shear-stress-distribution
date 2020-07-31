% developed by Himanshu Chouhan
close all
clear all
clc

% parameters for calculation of shear stress
f = 120000;                      % force in newton
b = 60;                          % width of rectangular section (in mm)
d = 120;                         % height of rectangular section (in mm)
i = b*d^3/12;                    % Moment of inertia of section (in mm^4)              
y = -b:b;                        % distance from neutral axis
sigma_shear = (f*((d/2)^2-y.^2))/(2*i);  % calculation of shear force

% Plotting the results so that we can have a graphical experice of how
% stress in changing with distance from neutral axis
plot(sigma_shear,y)
xlabel('shear stress (in Mpa)')
ylabel('Distance from neutral axis')
title('Shear stress distribution','fontsize',18)
grid on
