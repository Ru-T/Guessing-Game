#Your program should pick a random number between 1 and 100 and ask you for a guess.
#If your guess is less than the program's number, it should tell you that you were low and let you guess again.
#If the guess is greater than the program's number, it should tell you that you were high and let you guess again.
#If your guess is correct, the program should tell you that you win and then quit.
#After 5 incorrect guesses, the program should tell you that you lose.
#If you guess the same number twice, the program should ask you if you're feeling all right (or something similarly sarcastic).
#Your code should include at least two methods.

correct_number = rand(1...100)
 puts correct_number

all_guesses = Array.new

counter = 0
while counter < 5
  counter += 1
#5.times do
  puts "You have #{6 - counter} chances to guess a number between 1 and 100. Enter a number:"
  guess = gets.chomp
  all_guesses << guess
  case
    when guess.to_i >= correct_number
      puts "You guessed too high! Try again."
    when guess.to_i <= correct_number
      puts "You guessed too low! Try again."
    when all_guesses.include?(guess)
      puts "You already guessed that, you numbskull!"
  when guess.to_i == correct_number
      puts "You guessed the correct number!"
      break
  end
end

puts all_guesses

#Things to fix
# 1) "Try again" shouldn't appear on the 5th try
