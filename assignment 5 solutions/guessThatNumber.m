function guessThatNumber()  % *** WARNING: CONTAINS NO BUGS! *** 
%here it says there is intentional bugs now it can be changed to CONTAINS
%NO BUGS! I did this after fixing everything :) 
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Lauren Crawford 
%
%         DUE: November 17
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (now it is not buggy :) )\n\n', ... %can now be changed to not buggy, my final bug found after fixing everything and editing the title 
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced  %(error found using || instead off &&, kept getting error when trying to make a selection)   
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;   % the H is not capitalized, found looking through for messed up variable names)      
end

% randomly select secret number between 1 and highest for level of play
%secretNumber = floor(rand() + 1 * highest);  
secretNumber = randi(highest); 
% here the number will always be set to the highest because you are multiplying 
% the given number by the
% highest number so it will
% always end up higher. not
% too sure how to fix his but
% first took off the * highest and
% then later came  back and
% changed it to just randi 
              
% initialize number of guesses and User_guess

numOfTries = 0; %(i guessed the number right the first try and got an weird outcome when i did so i think setting this = to 0 instead of 1 will fix the issue because it was setting the number of tries to 1 before they even went) 
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest %(the  = sign was making it impossible to guess the highest number when i types 10 the first level the first time i got an error so i removed the = and it worked) 

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %(the sign was flipped to > instead of < because the userguess cannot be too low if it is greater than the secret number) 
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries); %( i got a weird congratulations message ont time and then the fprintf is calling for 2 not one variable so have to add numOfTries too for the second variable) 


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

end % saw when looking through (added and end, error found by pressing run)