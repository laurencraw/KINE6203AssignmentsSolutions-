function [total] = PNDQ(quarter, nickel, dime, pennies)
%PNDQ function will:
% 4. Write a function that takes in a number of quarters, dimes, 
%nickels, and pennies as inputs and returns the total amount as output.
%this function will take the input given in the form of (x,x,x,x) 
%quarter, nickel, dime, and pennie respectively and will
%give an output of the total combined for the varaible total. 
total = (quarter * .25) + (nickel * .05) + (dime * .10) + (pennies * .01);

end 
