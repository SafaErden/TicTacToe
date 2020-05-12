require './lib/player.rb'
require './lib/validate.rb'

$winning_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
$p1_arr = []
$p2_arr = []
def winner(player, choice)
  if player==Player1 
    $p1_arr << choice
    $p1_arr.combination(3).each do |x| 
      if $winning_arr.include?(x)
        true
      end
    end
  else
    $p2_arr << choice
  end
  $p2_arr.combination(3).each do |x| 
    if $winning_arr.include?(x)
      true
    end
  end
  false
end