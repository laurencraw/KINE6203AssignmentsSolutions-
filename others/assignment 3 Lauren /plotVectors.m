function plotVectors(vector1,vector2)
%plotVectors function will:
% 7. Write a function that takes two vectors and plots their values on a 
% figure. This function should set up the figure with titles for the 
% chart and each axis (can be generic names).
    plot (vector1 , vector2)
    title('plotting vectors')
    xlabel('x label')
    ylabel('y label')
end




%Lauren's notes 
%%in command window type a = [1:10]
%in command window type b = [2:11]
%save and type plotVectors in command window plotVectors(a,b)