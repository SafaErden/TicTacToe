class Player

  @@count_players=0
  attr_reader :name, :choice
  def initialize (name,choice)
    @name=name
    @choice=choice
    @@count_players+=1
  end

  def self.count_players
    @@count_players
  end
end

