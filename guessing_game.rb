# Normal mode

correct_number = (1..100).to_a.sample
# rand(1..100)
 puts correct_number

all_guesses = Array.new

def is_numeric?(input)
	Float(input) rescue false
end

def guess_check (user_guess, comp_number)
  if user_guess > comp_number
    puts "You guessed too high!"
  elsif user_guess < comp_number
    puts "You guessed too low!"
  else
    puts "You guessed right! YOU ARE AMAZING!!!"
    return true
  end
  false
end

def already_guessed? (array, user_guess)
	array.include?(user_guess)
end

count = 0
until count == 5
  puts "You have #{5 - count} chances to guess a number between 1 and 100. Enter a number:"
  guess = gets.chomp
  if already_guessed?(all_guesses, guess)
    puts "You already guessed this number, you numbskull!"
  else
    all_guesses << guess
    if is_numeric?(guess)
      guess = guess.to_i
      count += 1
      break if guess_check(guess, correct_number)
    else
      puts "That is not a number! Please enter a number."
    end
    if count == 5 && guess.to_i != correct_number
    	puts "You have guessed incorrectly 5 times. GAME OVER!"
    end
  end
end
