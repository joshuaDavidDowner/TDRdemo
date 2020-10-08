%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Copyright (C) 2019 Downer et al.
%       
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is a demonstration of how to Downer et al. use Target Dimensionality
% Reduction (TDR) (Mante et al. 2013) in the manuscript 'Cooperative 
% population coding in primary auditory cortex supports feature selective 
% attention'  
%
% To use with the supplied data, load the .mat file 'TDRDemoData'. To use
% with your own data, you will need to create equivalent inputs (described
% below). 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function P = feature_attend_uniform_TDRdemo(rateMatrix,variablesKey,coefficients)

% Explanations of inputs:

% 'rateMatrix': 
% A matrix of normalized firing rates across each of 26 experimental 
% conditions: 13 sounds * 2 attention contexts. The rows correspond to 
% conditions and the columns correspond to neurons, such that each element 
% of 'rateMatrix' is the normalized firing rate of a single neuron in a 
% single condition. This matrix is represented in Figure 2i as matrix 'R'

% 'conditionKey': 
% A matrix of codes corresponding to the values of each of 3 variables for 
% each of the 26 conditions. Each column corresponds to a given variable,
% each row to a given code. The names of the variables are found in 
% 'variablesKey', and are as follows: 'AM', 'BW' and 'Context'. Thus, the
% values of the rows along column 1 signify ranked AM levels, column 2
% signifies ranked BW levels and column 3 signifies attention Context ('0'
% for Attend BW and '1' for Attend AM). 

% 'coefficients': 
% A matrix of orthogonalized regression coefficients for each of 3 
% experimental variables ('AM', 'BW' and 'Context'). The rows correspond to 
% neurons and the columns to variables, such that each element of 
% 'coefficients' is the coefficient of a given variable for a given neuron. 
% This matrix is represented in Figure 2i as matrix 'M'

% Explanation of output:

% 'P':
% A matrix of projections onto each of the 3 variable axes for each of the
% 26 experimental conditions. The rows correspond to conditions and 
% the columns to variables, such that each element of 'P' is the projection
% of a population response to a given sound in a given attention context
% along a given variable axis. The columns are ordered the same as the
% matrices 'conditionKey' and 'coefficients' and the rows are ordered the
% same as the matrix 'rateMatrix'. 

%% Calculate projections onto each axis:
projectionMatrix = rateMatrix*coefficientMatrix;
P = projectionMatrix;

end