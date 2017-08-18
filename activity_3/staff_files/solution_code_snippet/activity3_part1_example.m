%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 3 - Part 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv file into MATLAB and store it in a variable called data
data = csvread('slump_test.csv',1,0);

% Store your variables in easy to access vectors
cement = data(:,2);
strength = data(:,11);


% Create a categorical array of the variable names in your model
vNames = {'Cement','Strength'};

% Store the vaiables that you are in your model in a table
tbl = table(cement,strength,'VariableNames',vNames);

% Display the tables of values
% (note don't perform this step for large data sets)
tbl

% Fit the OLS model
mdl = 'Strength~Cement', % this is the model Strength = B1*Cement + B0
lm = fitlm(tbl,mdl) % this line will fit the OLS model and provide summary

% We can plot our fitted linear model with data and confidence bounds
figure(1)
plot(lm)

% We now want to look at whether or not the homoskedasticy assumption
% has been violated or not

% Note: since the data is cross-section (provided our sampling was
% random, we do not need to check for auto-correlation)
figure(2)
plotResiduals(lm,'fitted')