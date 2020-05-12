#!/usr/bin/env ruby
# rubocop:disable Lint/UselessAssignment
require "./lib/player.rb"
require "./lib/validate.rb"

puts '------------------------------------'
puts
puts 'TicTacToe'
puts 

$game_on = true

def congratulate(name)
  puts '------------------------------------'
  puts "Congratulations #{name}, you won the game"
  puts "Current scoreboard: #{Player1.name}: #{Player1.score} and #{Player2.name}: #{Player2.score}"
end

def new_game?
  Player1.moves=[]
  Player2.moves=[]
  
  puts "If you want to play again type 'y' and press enter. If you want to leave just press enter." 
  decision = gets.chomp
  decision.downcase=="y" ? $game_on=true : $game_on=false
end

while $game_on
  choices=[]
  while Player.count_players<=1
    
    valid_name=false 
    while valid_name==false
      puts '------------------------------------'
      puts "Player #{Player.count_players+1}, what is your name?"
      name = gets.chomp
      if valid_name?(name) == false
        puts "Player #{Player.count_players+1}, please type a valid name!"
      else
        valid_name=true
      end
    end

    if Player.count_players==0
      valid_choice=false 
      while valid_choice==false
        puts '------------------------------------'
        puts "OK #{name}, whats your choice? 'X' or 'O'"
        choice = gets.chomp
        if valid_choice?(choice) == false
          puts "Please type a valid choice!"
        else
          valid_choice=true
          choices[0]=choice 
        end
      end
    elsif Player.count_players==1
      choices[0].downcase=="x" ? choices[1]="o" : choices[1]="x"
      puts '------------------------------------'
      puts "OK #{name}, since #{Player1.name} has chosen '#{Player1.choice.upcase}' your choice will be '#{choices[1].upcase}' automatically."
    end
    Player.count_players==0 ? Player1=Player.new(name, choices[Player.count_players]) : Player2=Player.new(name, choices[Player.count_players])
  end
  puts "Ok, we\'re good to go!"
  puts

  board = { 1=> '' , 2=> '', 3=> '', 4 =>'', 5=>'', 6=>'', 7=>'', 8=>'', 9=>''}
  puts '------------------------------------'
  print_grid(board)
  rand(0..1) == 0 ? last_player=Player1 : last_player=Player2
  
  move_count=0
  valid_move=false 
  while valid_move==false
    if (move_count+1)>9
      puts "It's a draw, none of you won this game!" 
      new_game?
      break
    end
    puts '------------------------------------'
    print "#{last_player.name}, its your turn, which area do you chose to put #{last_player.choice.upcase}: "
    choice = gets.chomp.to_i
    puts
    if validate_area?(choice, board) 
      board[choice] = last_player.choice.upcase
      puts '------------------------------------'
      print_grid(board)
      valid_move==true
      move_count+=1 
      if winner(last_player, choice)
        last_player.score+=1
        congratulate (last_player.name)
        new_game?
        break
      end
      last_player==Player1 ? last_player=Player2 : last_player=Player1
    else
      puts '------------------------------------'
      puts "Please type a valid choice!"
      puts '------------------------------------'
      print_grid(board) 
    end
  end
end

# rubocop:enable Lint/UselessAssignment
