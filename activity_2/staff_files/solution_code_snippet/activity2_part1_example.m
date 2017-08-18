%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 2 - Part 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv data into MATLAB and store it in a variable called data
data = csvread('energy_efficiency_data.csv',1,0);

% Create a vector of data for the heatling load
heating_load = data(:,9);

% Plot histogram for the heating load data
histogram(heating_load)
xlabel('Heating Load (kW)')
ylabel('Frequency')

% Find x-bar (the sample statistic for the mean)
xbar = mean(heating_load)

% We want to estimate the 95% confidence interval - this allows us to say
% that we are 95% confident that the true population mean (mu) lies
% somewhere in the confidence interval
SEM = std(heating_load)/sqrt(length(heating_load));     % Standard Error
ts = tinv([0.025  0.975],length(heating_load)-1);     % T-Score
CI = xbar + ts*SEM      % Confidence Intervals