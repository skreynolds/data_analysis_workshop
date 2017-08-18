%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 1 - Part 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv file into MATLAB and store it in a variable called data
data = csvread('powergen.csv',1,0);

% Store each of the variables into a variable for easier use
T = data(:,1);
AP = data(:,2);
RH = data(:,3);
V = data(:,4);
EP = data(:,5);

% Create a histogram of the of the temperature variable
figure(1)
histogram(T)
xlabel('Temperature (degrees Celcius)')
ylabel('Frequency')
title('Distribution of Temperature')

% Create a boxplot of the temperature
figure(2)
boxplot(EP)
ylabel('Hourly Electrical Energy Output (MW)')
title('Distribution of Electrical Energy Output')

% Create a scatter plot which shows the relationship between EP and T
figure(3)
scatter(T,EP,'.')
xlabel('Temperature (degrees Celcius)')
ylabel('Hourly Electrical Energy Output MW')
title('Temperature vs Electrical Energy Output')
