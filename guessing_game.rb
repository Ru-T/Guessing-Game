#Your program should pick a random number between 1 and 100 and ask you for a guess.
#If your guess is less than the program's number, it should tell you that you were low and let you guess again.
#If the guess is greater than the program's number, it should tell you that you were high and let you guess again.
#If your guess is correct, the program should tell you that you win and then quit.
#After 5 incorrect guesses, the program should tell you that you lose.
#If you guess the same number twice, the program should ask you if you're feeling all right (or something similarly sarcastic).
#Your code should include at least two methods.

puts "You have 5 chances to guess a number between 1 and 100. Enter a number:"
guess = gets.chomp

rand(1..100)
