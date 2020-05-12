#!/usr/bin/env ruby
# rubocop:disable Lint/UselessAssignment
require "./lib/player.rb"
require "./lib/validate.rb"
# Variables:
player_1_name = ''
player_2_name = ''
player_1_choice = ''
player_2_choice = ''
game_on = true
grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

Player.count_players

# UserInterface
puts '------------------'
puts 'TicTacToe'
puts '------------------'


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



# while game_on
puts "#{player_1_name}, its your turn, which area do you chose?"
player_1_choice = gets.chomp
# Validate user choice.
# if valid, move on, else inform player error so he can should chose it again
# display grid after each valid choice

puts "#{player_2_name}, its your turn, please select an area"
player_1_choice = gets.chomp
# Validate user choice.
# if valid, move on, else inform player error so he can should chose it again
# display grid after each valid choice

# update grid
# if winner or draw, set game_on = flase
# end of if
# end of while loop
# 'If !draw, congrats player who won, else print: Draw! // then ask: Do you guys want to play again?'
# Validate user choice.
# if valid, move on, else inform player error so he can should chose it again
# display grid after each valid choice
# rubocop:enable Lint/UselessAssignment
