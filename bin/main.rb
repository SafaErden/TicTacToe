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
puts 'Player 01, whats your name?'
player_1_name = gets.chomp
player_1_choice=gets.chomp

puts 'Player 02, whats your name?'
player_2_name = gets.chomp
puts "Welcome #{player_1_name} and #{player_2_name}! Now #{player_1_name}, you should choose X or O"
player_1_choice = gets.chomp

# Validate user choice.
# if valid, move on, else inform player error so he can should chose it again

# display grid function goes here, it will print out the grid each time the players make a valid choice.

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
