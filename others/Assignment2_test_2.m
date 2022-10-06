disp('Welcome to Tic Tac Toe')
% ask the user if they want to play
doYouWantToPlay = input('Do you want to play a game of Tic Tac Toe? (please type yes or no)','s');
board = ["1","2","3" ;"4","5","6";"7","8","9"];

for peopleMoving = [1 5]
    while doYouWantToPlay
        if doYouWantToPlay == "no"
            disp("ok, you can play again at another time :(")
            break


        elseif doYouWantToPlay == "yes"
            %play the tic tac toe game
            board = ["1","2","3" ;"4","5","6";"7","8","9"];
            disp(board)
            answer = "yes";
            %for peopleMoving = 1:9
            while(answer=="yes")
                while(doYouWantToPlay == "yes")
                    %disp(board)
                    %ask user for move
                    checkForLegalMove = true;
                    while(checkForLegalMove)
                        %disp(board)
                        userMove = input('Where do you want to move on the game board input numbers 1-9?','s');
                        %disp(board)
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
                            (userMove ~= '1' && userMove ~='2' && userMove ~='4' && userMove ~= '5' && userMove ~= '6' && userMove ~= '7' && userMove ~= '8' && userMove ~= '9')
                            disp("invalid move, please pick and available number")
% else
                         %   disp("invalid move, please pick and available number")%anything other than the numbers display for them to pick an available spot%
                         %   disp(board)


                        end



                    end

                    if(board(1,1) == 'X' && board(2,1) == 'X' && board(3,1) == 'X')
                        disp('you win!')
                        break
                    elseif (board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X')
                        disp('you win!')
                        break

                    elseif (board(1,3) == 'X' && board(2,3) == 'X' && board(3,3) == 'X')
                        disp('you win!')
                        break

                    elseif (board(1,1) == 'X' && board(1,2) == 'X' && board(1,3) == 'X')
                        disp('you win!')
                        break

                    elseif (board(2,1) == 'X' && board(2,2) == 'X' && board(2,3) == 'X')
                        disp('you win!')
                        break

                    elseif (board(3,1) == 'X' && board(3,2) == 'X' && board(3,3) == 'X')
                        disp('you win!')
                        break

                    elseif (board(1,1) == 'X' && board(2,2) == 'X' && board(3,3) == 'X')
                        disp('you win!')
                        break

                    elseif (board(3,1) == 'X' && board(2,2) == 'X' && board(1,3) == 'X')
                        disp('you win!')
                        break



                    elseif (board(1,1) ~= '1' && board(1,2) ~= '2' && board(1,3) ~= '3' && board(2,1) ~= '4' && board(2,2) ~= '5' && board(2,3) ~= '6' && board (3,1) ~= '7' && board(3,2) ~= '8' && board(3,3) ~='9')
                        disp("game tied")
                        break
                    end


                    %computerMove = randi([1 9]);
                    checkForLegalMove = true;

                    while(checkForLegalMove)
                        computerMove = randi([1 9]);

                        if(computerMove == 9) && (board(3,3)=="9")
                            board(3,3) = "O"
                            checkForLegalMove = false;


                        elseif(computerMove == 8) && (board(3,2)=="8")
                            board(3,2)= "O"
                            checkForLegalMove = false;


                        elseif (computerMove == 7) && (board(3,1)=="7")
                            board(3,1) = "O"
                            checkForLegalMove = false;


                        elseif (computerMove == 6) && (board(2,3)=="6")
                            board(2,3)= "O"
                            checkForLegalMove = false;


                        elseif (computerMove == 5) && (board(2,2)=="5")
                            board(2,2) = "O"
                            checkForLegalMove = false;


                        elseif (computerMove == 4) && (board(2,1)=="4")
                            board (2,1) = "O"
                            checkForLegalMove = false;


                        elseif (computerMove == 3) && (board(1,3)=="3")
                            board(1,3) = "O"
                            checkForLegalMove = false;


                        elseif (computerMove == 2) && (board(1,2)=="2")
                            board(1,2) = "O"
                            checkForLegalMove = false;


                        elseif (computerMove == 1) && (board(1,1)=="1")
                            board(1,1) = "O"
                            checkForLegalMove = false;
                        end
                    end

                    if(board(1,1) == 'O' && board(2,1) == 'O' && board(3,1) == 'O')
                        disp('you lose!')
                        break

                    elseif (board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O')
                        disp('you lose!')
                        break

                    elseif (board(1,3) == 'O' && board(2,3) == 'O' && board(3,3) == 'O')
                        disp('you lose!')
                        break

                    elseif (board(1,1) == 'O' && board(1,2) == 'O' && board(1,3) == 'O')
                        disp('you lose!')
                        break

                    elseif (board(2,1) == 'O' && board(2,2) == 'O' && board(2,3) == 'O')
                        disp('you lose!')
                        break

                    elseif (board(3,1) == 'O' && board(3,2) == 'O' && board(3,3) == 'O')
                        disp('you lose!')
                        break

                    elseif (board(1,1) == 'O' && board(2,2) == 'O' && board(3,3) == 'O')
                        disp('you lose!')
                        break


                    elseif (board(3,1) == 'O' && board(2,2) == 'O' && board(1,3) == 'O')
                        disp('you lose!')
                        break



                    end



                end

                answer = input('please use the word yes to restart the game or the word no to end the game:','s');
                if answer == "yes"
                    clear board
                    board = ["1","2","3" ;"4","5","6";"7","8","9"];


                elseif answer == "no"
                    disp('game over')
                    doYouWantToPlay = false;
                    break
                elseif answer ~= "yes" || "no"
                    disp('invalid answer:')
                    answer = input('please use the word yes to restart the game or the word no to end the game:','s');
                        if answer=="yes"
                           answer == "yes"
                           clear board
                           board = ["1","2","3" ;"4","5","6";"7","8","9"];
                        elseif answer =="no"
                            disp('game over')
                            doYouWantToPlay = false;
                        

                            break 
                        end 


                end


            end









        end

     



    end
    break



end


