
def get_user_info
  



end


choices=[]
def validate(choice)
  if !choices.include? choice && (choice.downcase=="x" || choice.downcase=="o")
    return true
  else
    return false
  end  
end




if !validate(choice) 
  puts "Please make a valid choice 'X' or 'O'"
else  player_1_name==nil
  puts "Please type a valid username"
else
  player_one=Player.new(player_1_name, player_1_choice)
end