%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code snippet for Activity 3 - Part 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the .csv file into MATLAB and store it in a variable called data
data = csvread('powergen.csv',1,0);

% Store your variables in easy to access vectors
T = data(:,1);
AP = data(:,2);
RH = data(:,3);
V = data(:,4);
EP = data(:,5);

% Create a categorical array of the variable names in your model
vNames = {'Temperature','Energy_Generation'};

% Store the vaiables that you are in your model in a table
tbl = table(T,EP,'VariableNames',vNames);

% Display the tables of values (note don't perform this step for large data sets)
tbl

% Fit the OLS model
mdl = 'Energy_Generation~Temperature', % this is the model EP = B1*T + B0
lm = fitlm(tbl,mdl) % this line will fit the OLS model and provide summary

% We can plot our fitted linear model with data and confidence bounds
% Note that the confidence bounds are very close to the plotted line
% and don't appear visible in this instance
figure(1)
plot(lm)

% We now want to look at whether or not the homoskedasticy assumption
% has been violated or not

% Note: since the data is cross-section (provided our sampling was
% random, we do not need to check for auto-correlation)
figure(2)
plotResiduals(lm,'fitted')

