%% Binary integration example
% Created by: Lee A. Harrison
% On: 10/11/2018
%
% Copyright (C) 2019 Artech House (artech@artechhouse.com)
% This file is part of Introduction to Radar Using Python and MATLAB
% and can not be copied and/or distributed without the express permission of Artech House.

clear, clc

% Set the parameters
snr_db = linspace(0, 20);
snr = 10.^(snr_db / 10);
pfa = 1.0e-6;
m = 3;
n = 5;

% Calculate the probability of detection
for i = 1:length(snr)
    pd(i) = binary_integration(m, n, pd_rayleigh(snr(i), pfa), pfa);
end

% Plot the results
figure;
plot(snr_db, pd);
title('Binary Integration M of N');
xlabel('Signal to Noise (dB)');
ylabel('Probability of Detection');
grid on;
plot_settings;