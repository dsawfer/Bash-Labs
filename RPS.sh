#!/bin/bash

user_value=0

while [ "$user_value" != "otpustite"  ]
do

	scam_index=$((RANDOM % 100))
	#echo $scam_index

	if [ $scam_index -le 17 ]
	then
		echo Please, tell me  your figure \(rock, paper, scissors\) or type \"otpustite\" to gameover:
		read user_value

		if [ "$user_value" = "rock"  ]
		then
			echo You lose, your figure is $user_value, bot figure is paper
		elif [ "$user_value" = "paper"  ]
		then
			echo You lose, your figure is $user_value, bot figure is scissors
		elif [ "$user_value" = "scissors"  ]
		then
			echo You lose, your figure is $user_value, bot figure is rock
		elif [ "$user_value" != "otpustite"  ]
		then
			echo Wrong figure, error
		fi
	else
		echo Please, enter your figure \(rock, paper, scissors\) or type \"otpustite\" to gameover:
		read user_value
		bot_value=$((RANDOM % 3)) #0-rock, 1-paper, 2-scissors
		#echo $bot_value

		if [ $bot_value = 0 ] #bot choose rock
		then
			if [ "$user_value" = "rock"  ]
			then
				echo Draw, your figure is $user_value, bot figure is rock
			elif [ "$user_value" = "paper"  ]
			then
				echo You win, your figure is $user_value, bot figure is rock
			elif [ "$user_value" = "scissors"  ]
			then
				echo You lose, your figure is $user_value, bot figure is rock
			elif [ "$user_value" != "otpustite"  ]
			then
	                        echo Wrong figure, error
			fi
		elif [ $bot_value = 1 ] #bot shoose paper
	        then
	                if [ "$user_value" = "paper"  ]
	                then
	                        echo Draw, your figure is $user_value, bot figure is paper
	                elif [ "$user_value" = "scissors"  ]
	                then
	                        echo You win, your figure is $user_value, bot figure is paper
	                elif [ "$user_value" = "rock"  ]
			then
	                        echo You lose, your figure is $user_value, bot figure is paper
			elif [ "$user_value" != "otpustite"  ]
			then
	                        echo Wrong figure, error
			fi
		else [ $bot_value = 2 ] #bot shoose scissors
	                if [ "$user_value" = "scissors"  ]
	                then
	                        echo Draw, your figure is $user_value, bot figure is scissors
	                elif [ "$user_value" = "rock"  ]
	                then
	                        echo You win, your figure is $user_value, bot figure is scissors
	                elif [ "$user_value" = "paper"  ]
			then
	                        echo You lose, your figure is $user_value, bot figure is scissors
			elif [ "$user_value" != "otpustite"  ]
			then
				echo Wrong figure, error
			fi
		fi
	fi
	echo $'\n'
done
