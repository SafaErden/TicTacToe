require 'board'

describe 'Board' do
  let(:board) { Board.new }

  describe '#initialize' do
    it 'should initialize a board instance without any argument' do
      board
    end

    it 'should make @content instance readible' do
      expect { Board.new.content }.not_to raise_error
    end

    it 'should make @content instance writable' do
      expect { Board.new.content = 'test' }.not_to raise_error
    end

    it 'should create @content hash variable with the length of 9' do
      content = board.content
      expect(content.length).to eql(9)
      expect(content.length).to_not eql(10)
    end

    it 'should create @content with each key equal to empty string' do
      content = board.content
      expect(content[5]).to eql('')
    end

    it 'should create @content with integer keys between 1 and 9' do
      content = board.content
      expect(content.keys[5]).to eql(6)
      expect(content.keys[10]).to eql(nil)
    end
  end
end
