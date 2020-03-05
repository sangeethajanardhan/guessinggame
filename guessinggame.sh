#!/usr/bin/env bash
#File:guessginggame.sh

function_guessing_game()
{
        if [ $var1 == $var2 ]
        then
                echo "Congrats, You predicted correctly"
                break
        elif [ $var1 -gt $var2 ]
        then
                echo "You have given too high. Please enter again"
        elif [ $var1 -lt $var2 ]
        then
                echo "You have given too low. Please enter again"
        fi
}


while true
do
echo "Enter the number of files in the current directory"
read var1
var2=`ls -1 | wc -l`
function_guessing_game var1 var2
done
