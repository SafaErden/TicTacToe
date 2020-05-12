class Player

  @@count_players=0

  def initialize (name,choice)
    @name=name
    @choice=choice
    @@count_players+=1
  end
end

