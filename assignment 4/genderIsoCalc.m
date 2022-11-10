function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender); %This is calling the funciton genderIsoCalc, a description of the function is on the function file

maleIsokData = Gender == 'M' ; 
femaleIsokData = Gender == 'F' ; 
% % 
maleIsoIndMeans = (Day1(maleIsokData) + (Day2(maleIsokData) + Day3(maleIsokData))) / 3;
femaleIsoIndMeans = (Day1(femaleIsokData) + (Day2(femaleIsokData) + Day3(femaleIsokData))) / 3;
% % 
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans); 



% Question 
% 4. Create a function (name it genderIsoCalc.m) that returns four outputs. 
    % The first set of outputs (one for males and one for females) should 
    % return a matrix with individual mean isometric strength values across 
    % all 3 days of lifting for the appropriate group. The second set of 
    % outputs will return the single mean value for each group 
    % (mean of subject means). Call this function in your main script and 
    % store the results with variable names maleIsoIndMeans, femaleIsoIndMeans,
    % maleGroupIsoMean and femaleGroupIsoMean. 
    % These data should not be normalized.
    
    
    %setting the gender is the first thing to do then once the gender is
    %set the function will find the average of the 3 days for the
    %maleIsokData, then it will do the same for the females, fort his one
    %you will get the outlput of either maleIsoIndMeans or
    %femaleIsoIndMeans, the function will then more to the group means so
    %you use the whole grouping of means of the males or females that we
    %just found and you will get the output of either malegroupIsoMeans or
    %femalegroupIsoMeans. 