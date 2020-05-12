#!/usr/bin/env ruby
# rubocop:disable Lint/UselessAssignment
require "./lib/player.rb"
require "./lib/validate.rb"
# Variables:
game_on = true
board = {}
board = { 1=> '' , 2=> '', 3=> '', 4 =>'', 5=>'', 6=>'', 7=>'', 8=>'', 9=>''}

Player.count_players

# UserInterface
puts '------------------'
puts 'TicTacToe'
puts '------------------'

while game_on
  choices=[]
  while Player.count_players<=1

    valid_name=false 
    while valid_name==false
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
      puts "OK #{name}, since #{Player1.name} has chosen '#{Player1.choice.upcase}' your choice will be '#{choices[1].upcase}' automatically."
    end
    Player.count_players==0 ? Player1=Player.new(name, choices[Player.count_players]) : Player2=Player.new(name, choices[Player.count_players])
  end
  puts "Ok, we\'re good to go!"


  print_grid(board)
  rand(0..1) == 0 ? last_player=Player1 : Player2
  
  valid_move=false 
  while valid_move==false
    puts "#{last_player.name}, its your turn, which area do you chose?"
    choice = gets.chomp
    if validate_area?(choice.to_i, board) 
       board[choice.to_i] = last_player.choice.upcase
       print_grid(board) 
       if check_win 
        game_on=false
        puts "congrats winner" 
        break 
       end
       valid_move==true
       last_player==Player1 ? last_player=Player2 : last_player=Player1
    else
      puts "Please type a valid choice!"
      print_grid(board) 
    end
  end
end
# 'If !draw, congrats player who won, else print: Draw! // then ask: Do you guys want to play again?'
# Validate user choice.
# if valid, move on, else inform player error so he can should chose it again
# display grid after each valid choice
# rubocop:enable Lint/UselessAssignment
