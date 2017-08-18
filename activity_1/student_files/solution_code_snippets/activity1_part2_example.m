%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 1 - Part 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv file into MATLAB and store it in a variable called data
data = csvread('water_treatment.csv');

% Filter the data to create subsets of your data

% A subset of the data which only contains values from 2004
filter_1990 = (data(:,1) == 90);
data_1990 = data(filter_1990,:);
vol_susolids_1990 = data_1990(:,27);

% A subset of the data which only contains values from 2004
filter_1991 = (data(:,1) == 91);
data_1991 = data(filter_1991,:);
vol_susolids_1991 = data_1991(:,27);

% A histogram of the CO in the air for 2004 compared to 2005
figure(1)

subplot(1,2,1) % Start the plot for the 2004 CO
histogram(vol_susolids_1990)
xlabel('Volatile Supended Solids (ppm)')
ylabel('Frequency')
title('Volatile Supended Solids 2004')

subplot(1,2,2) % Start the plot for the 2005 CO
histogram(vol_susolids_1991)
xlabel('Volatile Supended Solids (ppm)')
ylabel('Frequency')
title('Volatile Supended Solids 2005')

% Create a time series box and whisker diagram to show how the
% distribution changes over time

year_month = {}; % Initialises a catagorical array
% Adds all of the string labels to each observation
for i =1:length(data(:,27))
    year_month{i} = strcat(num2str(data(i,1)),'/', num2str(data(i,2)));
end
% Create the boxplot
figure(2);
boxplot(data(:,27),year_month);
set(gca,'FontSize',10,'XTickLabelRotation',90)
xlabel('Time (months)')
ylabel('Volatile Supended Solids (ppm)')
title('Volatile Supended Solids Distribution Change Over Time')
