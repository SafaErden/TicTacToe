require 'player.rb'

describe 'Player' do
  describe '::count_players' do
    it 'should return the @@count_players (number of players that has been created so far)' do
      expect(Player.count_players).to eql(0)
    end
  end

  let(:player) { Player.new('name', 'X') }

  describe '#initialize' do
    it 'should initialize a board instance with two arguments' do
      player
    end

    it 'should increase the class variable @@count_players by one' do
      expect(Player.count_players).to eql(1)
    end

    it 'should set @name to a new Player instance' do
      expect(player.name).to eql('name')
    end

    it 'should set @choice to a new Player instance with the value of the first argument' do
      expect(player.choice).to eql('X')
    end

    it 'should set @moves to a new Player instance with initial value empty array' do
      expect(player.moves).to eql([])
    end

    it 'should set @score to a new Player instance with initial value 0' do
      expect(player.score).to eql(0)
    end

    it 'should make @name, @choice, @moves and @score readable' do
      expect { Player.new('name', 'X').name }.not_to raise_error
      expect { Player.new('name', 'X').choice }.not_to raise_error
      expect { Player.new('name', 'X').moves }.not_to raise_error
      expect { Player.new('name', 'X').score }.not_to raise_error
    end

    it 'should make @moves and @score writable' do
      expect { Player.new('name', 'X').moves << 'test' }.not_to raise_error
      expect { Player.new('name', 'X').score += 1 }.not_to raise_error
    end
  end
end
