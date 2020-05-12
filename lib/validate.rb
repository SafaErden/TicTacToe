def validate_name?(name)
  if name!=nil
    return true
  else
    return false
  end  
end

choices=[]
def validate_choice(choice)
  if choice.downcase=="x" || choice.downcase=="o"
    return true
  else
    return false
  end  
end

def get_name
  puts 'Whats your name?'
  name = gets.chomp
  !validate_name?(name) ? get_name : get_choice(name)
end

def get_choice(name)
  puts "OK #{name}, whats your choice? 'X' or 'O'"
  choice = gets.chomp
  !validate_choice?(name) ? get_choice(name) : create_player(name, choice)
end

def create_player(name,choice)
  player_one=Player.new(player_1_name, player_1_choice)
  check_start
end

def check_start
  Player.count_players<=1 ? get_name : start_game
end

def start_game
  #choose which player to begin
  rand(1..2)
end





