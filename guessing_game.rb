# DONE
#Your program should pick a random number between 1 and 100 and ask you for a guess.
#If your guess is less than the program's number, it should tell you that you were low and let you guess again.
#If the guess is greater than the program's number, it should tell you that you were high and let you guess again.
#If your guess is correct, the program should tell you that you win and then quit.
#If you guess the same number twice, the program should ask you if you're feeling all right (or something similarly sarcastic).
#Your code should include at least two methods.

# TO DO
#After 5 incorrect guesses, the program should tell you that you lose.

# TO FIX
# "Try again" shouldn't appear on the 5th try

correct_number = rand(1...100)
 puts correct_number

all_guesses = Array.new

def is_numeric?(input)
	Float(input) rescue false
end

def guess_check (user_guess, comp_number)
  if user_guess > comp_number
    puts "You guessed too high! Try again."
  elsif user_guess < comp_number
    puts "You guessed too low! Try again."
  else
    puts "You guessed right! YOU ARE AMAZING!!!"
    return true
  end
  false
end

count = 0
until count == 5
  puts "You have #{5 - count} chances to guess a number between 1 and 100. Enter a number:"
  guess = gets.chomp
  if all_guesses.include?(guess)
    puts "You already guessed that, you numbskull!"
  else
    all_guesses << guess
    if is_numeric?(guess)
      guess = guess.to_i
      count += 1
      break if guess_check(guess, correct_number)
    else
      puts "Please enter a number."
    end
  end
end

  #if guess != number
  #	puts "You have guessed incorrectly 5 times. GAME OVER!"
  #end

#puts all_guesses
