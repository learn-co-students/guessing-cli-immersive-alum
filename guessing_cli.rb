# Code your solution here!
def game_over
  puts "Goodbye!"
end

def correct_guess
  puts "You guessed the correct number!"
end

def wrong_guess(rand)
  puts "The computer guessed #{rand}."
end

def run_guessing_game
  while true
    puts "Guess a number between 1 and 6."
    computer_guess = rand(1..6).to_s
    player_guess = gets.strip.downcase

    case player_guess
    when computer_guess
      correct_guess
    when 'exit'
      game_over
      break
    else
      wrong_guess(computer_guess)
    end
  end
end