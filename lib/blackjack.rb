def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
#   response = gets.chomp
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  2.times do
    num = deal_card
    sum = sum + num
  end
  display_card_total(sum)
  return sum
end

def hit?(current_total)
  # code hit? here
   prompt_user
   input = get_user_input

  if (input == "s")
    return current_total
  elsif (input == "h")
    num = deal_card
    current_total = current_total + num
    return current_total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
    puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round

  until total > 21
    total = hit?(total)
    display_card_total(total)
  end

  return end_game(total)
end

