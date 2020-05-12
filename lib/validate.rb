def valid_name?(name)
  name != ''
end

def valid_choice?(choice)
  if choice.downcase == 'x' || choice.downcase == 'o'
    true
  else
    false
  end
end

def validate_area?(choice, board)
  if choice != (1..9) && board[choice] == ''
    true
  else
    false
  end
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

def winner(player, choice)
  winning_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  player.moves << choice
  player.moves.combination(3).each do |x|
    return true if winning_arr.include?(x)
  end
  false
end
