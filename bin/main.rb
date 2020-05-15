#!/usr/bin/env ruby
# rubocop:disable Style/GlobalVars
# rubocop:disable Metrics/BlockNesting
# rubocop:disable Layout/LineLength
# rubocop:disable Lint/Void: Operator

require './lib/player.rb'
require './lib/board.rb'
require './lib/validate.rb'

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
  Player1.moves = []
  Player2.moves = []

  puts "If you want to play again type 'y' and press enter. If you want to leave just press enter."
  decision = gets.chomp
  $game_on = decision.downcase == 'y'
end

def print_grid(board)
  board.each do |k, v|
    print ' | '
    if v == ''
      print k
    else
      print v
    end
    print ' | '
    puts '' if (k % 3).zero?
  end
end

while $game_on
  choices = []
  while Player.count_players <= 1

    valid_name = false
    while valid_name == false
      puts '------------------------------------'
      puts "Player #{Player.count_players + 1}, what is your name?"
      name = gets.chomp
      if valid_name?(name) == false
        puts "Player #{Player.count_players + 1}, please type a valid name!"
      else
        valid_name = true
      end
    end

    if Player.count_players.zero?
      valid_choice = false
      while valid_choice == false
        puts '------------------------------------'
        puts "OK #{name}, whats your choice? 'X' or 'O'"
        choice = gets.chomp
        if valid_choice?(choice) == false
          puts 'Please type a valid choice!'
        else
          valid_choice = true
          choices[0] = choice
        end
      end
    elsif Player.count_players == 1
      choices[1] = choices[0].downcase == 'x' ? 'o' : 'x'
      puts '------------------------------------'
      puts "OK #{name}, #{Player1.name} has chosen '#{Player1.choice.upcase}' your choice is '#{choices[1].upcase}'."
    end
    Player.count_players.zero? ? Player1 = Player.new(name, choices[Player.count_players]) : Player2 = Player.new(name, choices[Player.count_players])
  end
  puts "Ok, we\'re good to go!"
  puts
  board = Board.new
  puts '------------------------------------'
  print_grid(board.content)
  last_player = rand(0..1).zero? ? Player1 : Player2

  move_count = 0
  valid_move = false
  while valid_move == false
    if (move_count + 1) > 9
      puts "It's a draw, none of you won this game!"
      new_game?
      break
    end
    puts '------------------------------------'
    print "#{last_player.name}, its your turn, which area do you chose to put #{last_player.choice.upcase}: "
    choice = gets.chomp.to_i
    puts
    if validate_area?(choice, board.content)
      board.content[choice] = last_player.choice.upcase
      puts '------------------------------------'
      print_grid(board.content)
      valid_move == true
      move_count += 1
      if winner(last_player, choice)
        last_player.score += 1
        congratulate last_player.name
        new_game?
        break
      end
      last_player = last_player == Player1 ? Player2 : Player1
    else
      puts '------------------------------------'
      puts 'Please type a valid choice!'
      puts '------------------------------------'
      print_grid(board.content)
    end
  end
end

# rubocop:enable Style/GlobalVars
# rubocop:enable Metrics/BlockNesting
# rubocop:enable Layout/LineLength
# rubocop:enable Lint/Void: Operator
