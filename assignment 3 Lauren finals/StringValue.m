function [lengthTyped,firstCharacter,lastCharacter] = StringValue(typed)
% StringValue function will:
% 9. Write a function that takes a string value as input and returns the 
% length of the string and the first and last character as outputs.
% StringValue function will take the word typed and give an output lengthTyped 
%for the length of the word, and firstCharacter for the first letter typed
%and lastCharacter for the last letter typed, then display all 3. 
lengthTyped = strlength (typed);
firstCharacter = typed (1,1);
lastCharacter = typed (1,lengthTyped);
disp(lengthTyped)
disp(firstCharacter)
disp(lastCharacter)
end
