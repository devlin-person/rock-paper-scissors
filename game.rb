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

puts "You picked #{player_hand}. \nComputer picked #{computer_hand}. \n#{winner}"
