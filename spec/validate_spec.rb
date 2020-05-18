require "validate"
require "player"

  describe "#valid_name?" do
    it "should return false if the given input is an empty string" do
      expect(valid_name?("")).to eql(false)
      expect(valid_name?("name")).to eql(true)
    end
  end  

  describe "#valid_choice?" do
    it "should return false if the given input is not equal to 'x' or 'o'"  do
      expect(valid_choice?("x")).to eql(true)
      expect(valid_choice?("y")).to eql(false)
    end
  end  
  
  describe "#validate_area?" do
    it "should return true if the chosen area is empty or between 0 and 10" do
      expect(validate_area?(0, "X")).to eql(false)
    end
  end
  
  describe "#winner" do
    it "should return false if the current move is not the winning move" do
      player=Player.new("safa","X")
      choice="X"
      expect(winner(player, choice)).to eql(false)
    end
  end