function [outputArg1,outputArg2,outputArg3, outputArg4] = returnSumDiffProductMax(inputArg1,inputArg2)
%ReturnSumDiffProductMax function will: 
% 2. Write a function that takes 2 numbers as input and returns values 
% for the sum, difference, product and max of the two numbers as outputs.
%given 2 varaibles inputed in the command window following the function 
%returnSumDiffProductMax in the form of (x,x) the function will give the
%sum, product, difference, and max of the inputed numbers. 
outputArg1 = inputArg1 + inputArg2;%sum
outputArg2 = inputArg1 - inputArg2;%difference
outputArg3 = prod(inputArg1, inputArg2);%product
outputArg4 = max(inputArg1, inputArg2);%mass
end
