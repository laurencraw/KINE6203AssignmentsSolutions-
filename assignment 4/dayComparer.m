function [dayWithTheHighestValue] = dayComparer(SubjectID,DayA,DayB)

dayWithTheHighestValue = find(DayB > DayA);


end
% 5. Create a function (name it dayComparer.m) that takes the subject ids 
%    and two days as inputs and returns a matrix with the subject IDs of the 
%    subjects who had an increase from the first day to the second day 
%    (it should also work for the second day to the third day). 
%    Run this function in your main script twice (be sure to update your 
%    inputs when you call the function the second time) and store the 
%    outputs as day1toDay2 and day2toDay3.
%this function will take the imputs of the SubjectID's, a first day, and
%the second day. on the main script you see:
%[day1toDay2] = dayComparer(SubjectID, Day1, Day2); 
%[day2toDay3] = dayComparer(SubjectID, Day2, Day3); 
%because you are going to find if improvement is happening from day 1 to
%day 2 then checking again and finding the ones that had improvemnt from
%day 2 to day 3. Then stores the answers to the 2 above under the variables
% day1toDay2, and day2toDay3. 