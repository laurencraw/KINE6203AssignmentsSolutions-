function [outputArg1] = triangle(sides)
%this function goes here
%   Detailed explanation goes here
sides = [1 2 3]

side1 = sides(1,1)
side2 = sides(1,2)
side3 = sides(1,3)
sideCheck = true;
while sideCheck
    if (sides(1,1) && sides(1,2) <= sides(1,3))
        outputArg1 = (side1 + side2)
        sideCheck = false; 
    elseif (sides(1,1) && sides(1,3) <= sides(1,2))
        outputArg1 = side1 + side3
        sideCheck = false;
    elseif (sides (1,2) && sides(1,3) <= sides(1,1))
        outputArg1 = side2 + side3
        sideCheck = false;
    else
        sideCheck = true;
    end
end




end
