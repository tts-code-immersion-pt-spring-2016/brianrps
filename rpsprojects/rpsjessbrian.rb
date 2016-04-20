
#Rock Paper Scissors Xtr3m3
#Hacked by J Lair & B Nivens
#April 8th, 2016

puts "*******************************"
puts "* Do you want to play a game? *"
puts "*******************************"

begin
  print "Type << 1 >> for single player or << 2 >> for multiplayer\nYour choice: "
  gametype = gets.chomp

  if gametype == "1"
    system "clear"
    puts "You selected << single player >>"
    puts "***********************************"
    puts "*Single Player Rock Paper Scissors*"
    puts "**********************************"
    rps_array = ["rock" , "paper" , "scissors"]
    loop do
      puts "Rock, Paper, or Scissors?"
      answer =gets.chomp.downcase

      computer_choice = rps_array.sample

      puts computer_choice

      if computer_choice == answer
        puts "It's a Tie!"
      elsif computer_choice ==rps_array[0] && answer == rps_array[1]
        puts "You win. Paper beats rock."
      elsif computer_choice == rps_array[0] && answer == rps_array[2]
        puts "Computer wins. Rock beats scissors"
      elsif computer_choice == rps_array[1] && answer == rps_array[0]
        puts "Computer wins. Paper beats rock."
      elsif computer_choice == rps_array[1] && answer == rps_array[2]
        puts "You win. Scissors beats paper."
      elsif computer_choice == rps_array[2] && answer == rps_array[0]
        puts "You win. Rock beats scissors"
      elsif computer_choice == rps_array[2] && answer == rps_array[1]
        puts "Computer wins. Scissors beat paper."
      else
        puts "hmmm, I don't recognize your answer...I guess no one wins!"
      end

      puts "Would you like to play again?"
      answer = gets.chomp.downcase
      break if answer == "no"
    end

  elsif gametype == "2"
    system "clear"
    puts "You selected << multiplayer player >>"
    puts "*****************************************"
    puts "*Multiplayer Player Rock Paper Scissors *"
    puts "*****************************************"
    puts "**************************************"
    puts "*      Player 2, turn your head      *"
    puts "**************************************"

    choices = Array["☁ Rock","✉ Paper","✂ Scissors"]

    begin
      print "<< Player 1 >>\nType (1) for Rock, (2) Paper, or (3) for Scissors\nYour choice: "
      p1choice = gets.chomp
      case p1choice
        when "1"
          p1choice = choices.at(0)
        when "2"
          p1choice = choices.at(1)
        when "3"
          p1choice = choices.at(2)
        else
          puts "Enter a valid choice"
        end
    end while p1choice == "1" || p1choice == "2" || p1choice == "3"
    system "clear"
    puts "**************************************"
    puts "*      Player 1, turn your head      *"
    puts "**************************************"

    begin
      print "<< Player 2 >>\nType (1) for Rock, (2) Paper, or (3) for Scissors\nYour choice: "
      p2choice = gets.chomp
      case p2choice
        when "1"
          p2choice = choices.at(0)
        when "2"
          p2choice = choices.at(1)
        when "3"
          p2choice = choices.at(2)
        else
          puts "Enter a valid choice"
        end
    end while p2choice == "1" || p2choice == "2" || p2choice == "3"
      system "clear"
      puts "Press << Return >> determine the winner"
      gets
      puts "testing: p1 #{p1choice} p2 #{p2choice}"
      if p1choice == p2choice
        puts "#{p1choice}\tties\t#{p2choice}"
        puts "\tTie ⇌"
      elsif p1choice == choices.at(0) && p2choice ==  choices.at(2)
          puts "#{p1choice}\tbeats\t#{p2choice}"
          puts "\tPlayer 1 wins ✌"
        elsif p1choice == choices.at(0) && p2choice == choices.at(1)
          puts "#{p2choice}\tbeats\t#{p1choice}"
          puts "\tPlayer 2 wins ✌"
      elsif p1choice == choices.at(1) && p2choice ==  choices.at(0)
        puts "#{p1choice}\tbeats\t#{p2choice}"
        puts "\tPlayer 1 wins ✌"
      elsif p1choice == choices.at(1) && p2choice ==  choices.at(2)
        puts "#{p2choice}\tbeats\t#{p1choice}"
        puts "\tPlayer 2 wins ✌"
      elsif p1choice ==  choices.at(2) && p2choice == choices.at(0)
        puts "#{p2choice}\tbeats\t#{p1choice}"
        puts "\tPlayer 2 wins ✌"
      elsif p1choice ==  choices.at(2) && p2choice ==  choices.at(1)
        puts "#{p1choice}\tbeats\t#{p2choice}"
        puts "\tPlayer 1 wins ✌"
      end
    end
    begin
      print "Play again?(y/n): "
      playagain = gets.chomp
        if playagain.downcase == "y"
          gametype = "1"
        elsif (playagain == "n")
          gametype = "0"
          puts "Thank you for playing"
        else
          puts "Enter a valid choice"
        end
    end until playagain == "y" || playagain == "n"
end while gametype == "1" || gametype == "2"
