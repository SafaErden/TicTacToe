def valid_name?(name)
  if name!=""
    return true
  else
    return false
  end  
end

choices=[]
def valid_choice?(choice) 
  if choice.downcase=="x" || choice.downcase=="o"
    return true
  else
    return false
  end  
end

def create_player(name,choice)
  player_one=Player.new(name, choice)
  check_start
end

def check_start
  Player.count_players<=1 ? get_name : start_game
end

def start_game
  #choose which player to begin
  rand(1..2)
end

def validate_area?(choice, board)
  if choice != (1..9) && board[choice] == ''
    return true
  else
    return false
  end
end

def print_grid(board)
  board.each do |k, v| 
    print " | "
    if v==""
     print k 
    else 
      print v
    end
    print " | "
    if k%3==0
      puts ""
      #puts " ____________________"
    end
  end
end

def check_win 
    return false
end
