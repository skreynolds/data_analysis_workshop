%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 1 - Part 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv file into MATLAB and store it in a variable called data
data = csvread('airquality_formatted.csv',1,0);

% Filter the data to create subsets of your data

% A subset of the data which only contains values from 2004
filter_2004 = (data(:,1) == 2004);
data_2004 = data(filter_2004,:);
CO_2004 = data_2004(:,3);

% A subset of the data which only contains values from 2004
filter_2005 = (data(:,1) == 2005);
data_2005 = data(filter_2005,:);
CO_2005 = data_2005(:,3);

% A histogram of the CO in the air for 2004 compared to 2005
figure(1)

subplot(1,2,1) % Start the plot for the 2004 CO
histogram(CO_2004)
xlabel('CO mg/m^3')
ylabel('Frequency')
title('2004')

subplot(1,2,2) % Start the plot for the 2005 CO
histogram(CO_2005)
xlabel('CO mg/m^3')
ylabel('Frequency')
title('2005')

% Create a time series box and whisker diagram to show how the
% distribution changes over time

year_month = {}; % Initialises a catagorical array
% Adds all of the string labels to each observation
for i =1:length(data(:,3))
    year_month{i} = strcat(num2str(data(i,1)),'/', num2str(data(i,2)));
end
% Create the boxplot
figure(2);
boxplot(data(:,3),year_month);
set(gca,'FontSize',10,'XTickLabelRotation',90)
xlabel('Time (months)')
ylabel('CO mg/m^3')
title('CO Distribution Over Time')
