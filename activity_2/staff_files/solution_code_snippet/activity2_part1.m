%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 1 - Part 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv data into MATLAB and store it in a variable called data
data = csvread('car_data.csv');

% Create a vector of data for the US cars
u_fuel_eff = data(:,1);

% Plot histogram for the fuel efficiency data
histogram(u_fuel_eff)
xlabel('Fuel Effiency (km/L)')
ylabel('Frequency')

% Find x-bar (the sample statistic for the mean)

xbar = mean(u_fuel_eff)

% We want to estimate the 95% confidence interval - this allows us to say
% that we are 95% confident that the true population mean (mu) lies
% somewhere in the confidence interval
SEM = std(u_fuel_eff)/sqrt(length(u_fuel_eff));     % Standard Error
ts = tinv([0.025  0.975],length(u_fuel_eff)-1);     % T-Score
CI = xbar + ts*SEM      % Confidence Intervals