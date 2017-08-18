%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 1 - Part 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv data into MATLAB and store it in a variable called data
data = csvread('car_data.csv');

% Seperate the samples into two variables us_cars and japanese_cars
us_cars = data(:,1);
japanese_cars = data(:,2);

% Plot histogram to get an understanding of the distribution
subplot(1,2,1)
histogram(us_cars,10) % histogram plot for easterly heat loading
xlabel('Efficiency (km/L)')
ylabel('Frequency')
title('US')
subplot(1,2,2)
histogram(japanese_cars,10) % histogram plot for westerly heat loading
xlabel('Efficiency (km/L)')
ylabel('Frequency')
title('Japan')

% Run the two sample t-test which provides a statistically indication
% if the two samples are from the same or different populations
% (That is, do the cars from japan perform the same as the cars
% from the US in terms of fuel efficiency, statistically speaking)

% The important value here is the p-value
% low p-value means statistically different
% high p-value means not statistically different
[h,p,ci,stats] = ttest2(us_cars,japanese_cars)