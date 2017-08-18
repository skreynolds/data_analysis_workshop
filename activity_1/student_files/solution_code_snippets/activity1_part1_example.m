%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 1 - Part 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv file into MATLAB and store it in a variable called data.
% The ,1,0 offsets the top row because this includes non-numerical data
data = csvread('slump_test.csv',1,0);

% Store each of the variables into a variable for easier use
cement = data(:,1);
strength = data(:,11);

% Create a histogram of the of the US Fuel Efficieny variable
figure(1) % Sets up a figure window
histogram(strength)
xlabel('Strength (MPa)')
ylabel('Frequency')
title('Distribution of Strength')

% Create a boxplot of the temperature
figure(2) % Sets up a figure window
boxplot(strength)
ylabel('Strength (MPa)')
title('Distribution of Strength')

% Create a scatter plot which shows the relationship between EP and T
figure(3) % Sets up a figure window
scatter(cement,strength,'.')
xlabel('Cement (kg per cubic meter)')
ylabel('Strength (MPa)')
title('Cement vs Strength')
