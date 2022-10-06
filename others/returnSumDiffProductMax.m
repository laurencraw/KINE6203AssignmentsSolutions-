
function [outputArg1,outputArg2,outputArg3, outputArg4] = returnSumDiffProductMax(inputArg1,inputArg2)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = inputArg1 + inputArg2;%sum
outputArg2 = inputArg1 - inputArg2;%difference
outputArg3 = prod(inputArg1, inputArg2);%product
outputArg4 = max(inputArg1, inputArg2);%mass

end
