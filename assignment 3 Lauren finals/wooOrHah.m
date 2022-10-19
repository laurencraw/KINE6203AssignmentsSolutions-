function [output] = wooOrHah(inputArg1,inputArg2)
%wooOrHah function will: 
% 3. Write a function that takes 2 numbers as inputs and returns 
% Woo if their sum is even and Hah if their sum is odd.
%given input number in the form of (x,x) an output of either woo or hah will 
%be reurned if the sum is even or odd respectively. 
output = inputArg1 + inputArg2 ;
    if (mod(output,2) == 1)
    output = 'Hah';
    else 
    output = 'Woo';
    end 
end
