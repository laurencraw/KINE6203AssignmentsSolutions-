function [lengthTyped,firstCharacter,lastCharacter] = StringValue(typed)
% StringValue function will:
% 9. Write a function that takes a string value as input and returns the 
% length of the string and the first and last character as outputs.
lengthTyped = strlength (typed);
firstCharacter = typed (1,1);
lastCharacter = typed (1,lengthTyped);
disp(lengthTyped)
disp(firstCharacter)
disp(lastCharacter)
end