class Player

  @@count_players=0
  attr_reader :name, :choice
  attr_accessor :moves, :score
  def initialize (name,choice)
    @name=name
    @choice=choice
    @@count_players+=1
    @moves=[]
    @score=0
  end

  def self.count_players
    @@count_players
  end
end

