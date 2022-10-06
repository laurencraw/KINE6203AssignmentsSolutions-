disp('Welcome to Tic Tac Toe')
% ask the user if they want to play
doYouWantToPlay = input('Do you want to play a game of Tic Tac Toe? (please type yes or no)','s')
doYouWantToPlay == "yes"
%play the tic tac toe game
board = ["1","2","3" ;"4","5","6";"7","8","9"];


while (doYouWantToPlay == "yes")

    %ask user for move
    checkForLegalMove = true;

    while(checkForLegalMove)
        %disp(board)
        userMove = input('Where do you want to move on the game board input numbers 1-9?','s')
        if (userMove == '9' && board(3,3)=='9')
            board(3,3) = "X"
            checkForLegalMove = false;

        elseif(userMove == '8' && board(3,2)=='8')
            board(3,2)= "X"
            checkForLegalMove = false;

        elseif(userMove == '7' && board(3,1)=='7')
            board(3,1) = "X"
            checkForLegalMove = false;

        elseif (userMove == '6' && board(2,3)=='6')
            board(2,3)= "X"
            checkForLegalMove = false;

        elseif (userMove == '5' && board(2,2)=='5')
            board(2,2) = "X"
            checkForLegalMove = false;

        elseif (userMove == '4' && board(2,1)=='4')
            board (2,1) = "X"
            checkForLegalMove = false;

        elseif (userMove == '3' && board(1,3)=='3')
            board(1,3) = "X"
            checkForLegalMove = false;

        elseif (userMove == '2' && board(1,2)=='2')
            board(1,2) = "X"
            checkForLegalMove = false;

        elseif (userMove == '1' && board(1,1)=='1')
            board(1,1) = "X"
            checkForLegalMove = false;

        else
            input("invalid move, please hit enter to select another number");
        end
    end


    checkForLegalMove = true;
    while(checkForLegalMove)
        computerMove = randi([1 9]);

        if(computerMove == 9 && board(3,3)=='9')
            board(3,3) = "O"
            checkForLegalMove = false;

        elseif(computerMove == 8 && board(3,2)=='8')
            board(3,2)= "O"
            checkForLegalMove = false;

        elseif (computerMove == 7 && board(3,1)=='7')
            board(3,1) = "O"
            checkForLegalMove = false;

        elseif (computerMove == 6 && board(2,3)=='6')
            board(2,3)= "O"
            checkForLegalMove = false;

        elseif (computerMove == 5 && board(2,2)=='5')
            board(2,2) = "O"
            checkForLegalMove = false;

        elseif (computerMove == 4 && board(2,1)=='4')
            board (2,1) = "O"
            checkForLegalMove = false;

        elseif (computerMove == 3 && board(1,3)=='3')
            board(1,3) = "O"
            checkForLegalMove = false;

        elseif (computerMove == 2 && board(1,2)=='2')
            board(1,2) = "O"
            checkForLegalMove = false;

        elseif (computerMove == 1 && board(1,1)=='1')
            board(1,1) = "O"
            checkForLegalMove = false;
            break
        end
    end 
        if(board(1,1) == 'X' && board(2,1) == 'X' && board(3,1) == 'X')
            disp('you win!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X')
            disp('you win!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(1,3) == 'X' && board(2,3) == 'X' && board(3,3) == 'X')
            disp('you win!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(1,1) == 'X' && board(1,2) == 'X' && board(1,3) == 'X')
            disp('you win!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(2,1) == 'X' && board(2,2) == 'X' && board(2,3) == 'X')
            disp('you win!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(3,1) == 'X' && board(3,2) == 'X' && board(3,3) == 'X')
            disp('you win!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(1,1) == 'X' && board(2,2) == 'X' && board(3,3) == 'X')
            disp('you win!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(3,1) == 'X' && board(2,2) == 'X' && board(1,3) == 'X')
            disp('you win!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif(board(1,1) == 'O' && board(2,1) == 'O' && board(3,1) == 'O')
            disp('you lose!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O')
            disp('you lose!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(1,3) == 'O' && board(2,3) == 'O' && board(3,3) == 'O')
            disp('you lose!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(1,1) == 'O' && board(1,2) == 'O' && board(1,3) == 'O')
            disp('you lose!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(2,1) == 'O' && board(2,2) == 'O' && board(2,3) == 'O')
            disp('you lose!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(3,1) == 'O' && board(3,2) == 'O' && board(3,3) == 'O')
            disp('you lose!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(1,1) == 'O' && board(2,2) == 'O' && board(3,3) == 'O')
            disp('you lose!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        elseif (board(3,1) == 'O' && board(2,2) == 'O' && board(1,3) == 'O')
            disp('you lose!')
            input('please use the letter Q to restart the game or the letter W to end the game:')
            break
        end
end







%doYouWantToPlay = "no"
%if (doYouWantToPlay == "no")
%disp ("Game over");
%exit
%end



function
input (num1, num2, num3)
mean = ('num1, num1, num3')
end






elseif(board(1,1) ~= '1' && board(1,2) ~= '2' && board(1,3) ~= '3' && board(2,1) ~= 4 && board(2,2) ~= 5 && board(2,3) ~= 6 && board (3,1) ~= 7 && board(3,2) ~= 8 && board(3,3) ~=9)



