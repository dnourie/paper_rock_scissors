#
# Rock, Paper, Scissors Game
#
# Ask the user to choose rock, paper, or scissors
puts "Rock, Paper, and Scissors!"
puts "Do you want to play? Yes/No"
  response = gets.chomp.downcase
  until response == "no" do
    begin
    puts "Which do you want: rock, paper, or scissors?"
    choice = gets.chomp.downcase
    end
    puts "You chose #{choice}"
    # The computer makes a choice
    items = ["rock", "paper", "scissors"]
    computer = items.sample
    # Tell the user what the computer has chosen
    puts "The computer has chosen #{computer}!"
    # Calculate the results based on choices
    def display_game_results(choice, computer)
      if choice == "rock" and computer == "paper" 
        puts "Paper covers rock. Computer wins!"
      elsif choice == "paper" and computer == "rock"
        puts "Paper covers rock. You win!"
      elsif choice == "scissors" and computer == "paper"
        puts "Scissors cut paper. You win!"
      elsif choice == "paper" and computer == "scissors"
        puts "Scissors cut paper. Computer wins!" 
      elsif choice == "rock" and computer == "scissors"
        puts "Rock crushes scissors. You win!"
      elsif choice == "scissors" and computer == "rock"
        puts "Rock crushes scissors. Computer wins!"
      elsif choice == computer
        puts "Game tied!"
      end
    end
  display_game_results(choice, computer)
  puts "Would you like to play again? Yes/No"
  response = gets.chomp.downcase
end