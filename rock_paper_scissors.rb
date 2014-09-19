#
# Rock, Paper, Scissors Game
#
# Ask the user to choose rock, paper, or scissors
puts "Rock, paper, and Scissors!"
puts "Do you want to play? Yes/No"
response = gets.chomp.downcase
  until response == "no" do
    puts "Which do you want: rock, paper, or scissors?"
    choice = gets.chomp.downcase
      if choice == "rock"
        puts "You chose rock!"
      elsif choice == "paper"
        puts "You chose paper"
      elsif choice == "scissors"
        puts "You chose scissors!"
      else choice == ""
        puts "Please type rock, paper, or scissors."
      end
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
        else
          puts "Game tied!"
        end
      end
  #Ask the user to play again
    display_game_results(choice, computer)
    puts "Would you like to play again? Yes/No"
    response = gets.chomp.downcase
  end