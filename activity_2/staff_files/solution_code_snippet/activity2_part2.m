%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 2 - Part 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv data samples into MATLAB and store it in a variable called data
data1 = csvread('energy_efficiency_data_east.csv');
data2 = csvread('energy_efficiency_data_west.csv');

% Create 2 vectors which represent the heating load for easterly facing
% buildings and westerly facing buidlings
heat_sample1 = data1(:,10);
heat_sample2 = data2(:,10);

% Create a subplot to plot the first histogram
subplot(1,2,1)
histogram(heat_sample1,9) % histogram plot for easterly heat loading
xlabel('kW')
ylabel('Frequency')
title('Easterly Facing')
subplot(1,2,2)
histogram(heat_sample2,9) % histogram plot for westerly heat loading
xlabel('kW')
ylabel('Frequency')
title('Westerly Facing')

% Run the two sample t-test which provides a statistically indication
% if the two samples are from the same or different populations
% (That is, do the buildings experience the same heat loading
% statistically speaking)

% The important value here is the p-value
% low p-value means statistically different
% high p-value means not statistically different
[h,p,ci,stats] = ttest2(heat_sample1,heat_sample2)