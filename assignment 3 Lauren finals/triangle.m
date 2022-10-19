function logicalValue = triangle (b)
%logicalValue function will: 
% 5. Write a function that accepts a single 3-element array 
% (e.g. [3 4 5]), and returns a logical value (0 or 1) indicating 
% if the 3 elements of the array represent the sides of a valid triangle.
% Given a 3 element array typed in the command window when calling the 
%function in the form of [x,x,x] will in turn return 0 for false and 
% 1 for true. the function triangle will add all the values from side 1,2,3
% and give an output logical value of either 0 or 1. 
sort(b)
side1 = b(1,1);
side2 = b(1,2);
side3 = b(1,3);
    if b(1,1) + b(1,2) > b(1,3)
        logicalValue = true; 
    else
        logicalValue = false;
    end
end



%notes 
%%For those who can't remember...in a valid triangle
% the sum of the lengths of the 2 shorter sides are
% greater than the length of the longest side.

