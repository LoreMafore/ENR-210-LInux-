#!/bin/bash

count=0
play="y"

echo "I am going to flip a coin."
echo " "

while [[ "$play" == [Yy] || "$play" == [Yy]es  ]]; do
    number=$((RANDOM%2+1))

    echo " "
    echo "Guess Heads or Tails."
    echo " "
    
    read guess


    if [[ "$guess" ==  [Hh]eads && $number -eq 1 ]]; then
        ((count++))
	echo " "

        echo "You won, It was Heads! You have $count points"
    elif [[ "$guess" == [Tt]ails && $number -eq 2 ]]; then
        ((count++))
	echo " "

        echo "You won, It was Tails! You have $count points"
    
    elif [[ "$guess" == [Tt]ails && $number -eq 1 ]]; then
	    ((count--))
	    echo " "

	    echo "You lost, It was Heads! You have $count points" 

    else
        ((count--))
	echo " "

	echo "You lost, It was Tails! You have $count points"

    fi

    echo " "
    echo "Do you want to play again? (Y/N)" 
    echo " "

    read play
done

echo "Thanks for playing! Your total score was: $count"
















