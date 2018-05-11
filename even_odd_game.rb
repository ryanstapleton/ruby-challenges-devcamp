def even_odd number
  if number.odd?
    "odd"
  else
    "even" 
  end
end

def odd_even_game
  puts "Call even or odd:"
  prediction = gets.chomp.downcase

  puts "what is your roll?"
  player_roll = gets.chomp.to_i

  computer_roll = 1 + rand(5)
  puts "I rolled a #{computer_roll}"
  result = player_roll + computer_roll
  puts "Result: #{result}"

  if even_odd(result) == prediction
    p "You win!"
  else
    p "You lose!"
  end
end

odd_even_game