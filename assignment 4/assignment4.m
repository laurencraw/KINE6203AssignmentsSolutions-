% 1. created new script and saved as assignment4.m 
% 2. import the data using import data tool, then found the folder the data is 
%    located in and right click it and selected import data (isok_data_6803.csv)
%    click output type as column vectors, then generate function from inport
%    selection, and is saved as (importfile.m) 
% 3. call the function importfile and give it a name ('isok_data_6803.csv')
%    then type [SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv'))
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

    %see the file for the full details on the function 
    %this function will take the imported file saved as
    %'isok_data_6803.csv' as seperate column vectors with th egiven data 
    %[subjectID, age, gender, weight, day1, day2, day3] the varaivle name
    %will match with the header on the file that was imported 


% 4. Create a function (name it genderIsoCalc.m) that returns four outputs. 
        % The first set of outputs (one for males and one for females) 
             % should return a matrix with individual mean isometric strength 
             % values across all 3 days of lifting for the appropriate group. 
        % The second set of outputs will return the single mean value for 
             % each group (mean of subject means). Call this function in your 
             % main script and store the results with variable names 
             % maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean and 
             % femaleGroupIsoMean. 
        %see function file for more information 
        %These data should not be normalized.
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender); 
% 5. Create a function (name it dayComparer.m) that takes the subject ids 
%    and two days as inputs and returns a matrix with the subject IDs of the 
%    subjects who had an increase from the first day to the second day 
%    (it should also work for the second day to the third day). 
%    Run this function in your main script twice (be sure to update your 
%    inputs when you call the function the second time) and store the 
%    outputs as day1toDay2 and day2toDay3.
[day1toDay2] = dayComparer(SubjectID, Day1, Day2); 
[day2toDay3] = dayComparer(SubjectID, Day2, Day3); 

% 6. Weight normalize the isokinetic data and calculate the group means 
%    for each day. 
%    Store these values with the names normDay1mean, normDay2mean, normDay3mean. 
%    You do not need to write a function for this, but if you d like to feel free.
avgWeight = mean(Weight);   %
day1mean = mean(Day1);      %
day2mean = mean(Day2);      %group means
day3mean = mean(Day3);      %

normDay1mean = day1mean/avgWeight;     %
normDay2mean = day2mean/avgWeight;     %normalize the data 
normDay3mean = day3mean/avgWeight;     %
%
%
%set the vectors to 13x1 to make into a table easily with sane number of
%rows 
           
femaleIsoIndMeans(13,1) = NaN;            
maleGroupIsoMean(13,1) = NaN;             
femaleGroupIsoMean(13,1) = NaN;           
day1toDay2(13,1) = NaN;                  
day2toDay3(13,1) = NaN;                   
normDay1mean(13,1) = NaN;                 
normDay2mean(13,1) = NaN;                 
normDay3mean(13,1) = NaN; 


%7. Export results to a csvfile using an appropriate built-in function. 
%   Name the file iso_results.csv. (You do not need to submit this file 
%    because your script should create this file when I run your code.)
results = table(maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean);

writetable(results,'iso_results.csv');
%save table under given file name. 












