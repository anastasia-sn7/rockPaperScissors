class Main
  def self.main
    possibleChoices = ["rock", "paper", "scissors"]

    puts "You can play 'rock, paper and scissors' with me! Enter your choice:"
    playersChoice = gets.chomp.downcase

    while !possibleChoices.include?(playersChoice)
      puts "You entered something that don't belong to the game! Try again:"
      playersChoice = gets.chomp.downcase
    end

    computerChoice = possibleChoices[rand(3)]
    puts "Computer chose " + computerChoice

    if(playersChoice == "rock" && computerChoice == "paper" || playersChoice == "paper" && computerChoice == "scissors" || playersChoice == "scissors" && computerChoice == "rock" )
      puts "Oops... You've lost. Better luck next time!"
    elsif (playersChoice == computerChoice)
      puts "Draw!"
    else
      puts "You've won! Congratulations!"
    end
  end

  Main.main

end
