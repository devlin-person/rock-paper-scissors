puts "Would you like to play Rock, Paper, Scissors? (y/n)"

answer = gets.chomp.downcase

while answer != "y" && answer != "n"
  puts "Please select yes (y) or no (n)."
  answer = gets.chomp.downcase
end

if answer == "n"
  puts "That's too bad."
else
  while answer != "n"
    puts "Let's play Rock, Paper, Scissors! \nReady? \nPick 'r' for rock, 'p' for paper, or 's' for scissors. \nRock, paper, scissors, shoot!"

    player = gets.chomp.downcase

    while player != "r" && player != "p" && player != "r"
      puts "Please select rock (r), paper (p), or scissors (s)."
      player = gets.chomp.downcase
    end

    if player == "r"
      player_hand = "rock"
    elsif player == "p"
      player_hand = " paper"
    elsif player == "s"
      player_hand = "scissors"
    end

    computer = rand(3)

    if computer == 0
      computer_hand = "rock"
    elsif computer == 1
      computer_hand = "paper"
    elsif computer == 2
      computer_hand = "scissors"
    end

    if player == "r" && computer == 1 || player == "s" && computer == 0 || player == "p" && computer == 2
      winner = "Computer wins!"
    elsif player == "r" && computer == 2 || player == "p" && computer == 0 || player == "s" && computer == 1
      winner = "Player wins!"
    else
      winner = "Tie!"
    end

    puts "Play again? (y/n)"

    answer = gets.chomp.downcase

    while answer != "y" && answer != "n"
      puts "Please select yes (y) or no (n)."
      answer = gets.chomp.downcase
    end
  end

  puts "That's for playing!"
end
