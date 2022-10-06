function [output] = wooOrHah(inputArg1,inputArg2)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
output = inputArg1 + inputArg2 
    if (mod(output,2) == 1)
    output = 'Hah'
    else 
    output = 'Woo'
    end 
end

