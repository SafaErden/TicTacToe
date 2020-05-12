#!/usr/bin/env ruby
# rubocop:disable Lint/UselessAssignment
require "./lib/player.rb"
# Variables:
player_1_name = ''
player_2_name = ''
player_1_choice = ''
player_2_choice = ''
game_on = true
grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]


p Player.count_players

# UserInterface
puts '------------------'
puts 'TicTacToe'
puts '------------------'

puts 'Player1: What is your name?'
player_1_name = gets.chomp
get_name(player_1_name)
puts "OK #{player_1_name}, whats your choice? 'X' or 'O'"
player_1_choice=gets.chomp
get_choice(player_1_name, player_1_choice)
create_player(player_1_name, player_1_choice)

puts 'Player 02, whats your name?'
player_2_name = gets.chomp
get_name(player_2_name)
create_player(player_2_name, player_2_choice)
# display grid function goes here, it will print out the grid each time the players make a valid choice.
puts "Ok, we\'re good to go!"
check_start
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
