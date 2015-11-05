require 'towers_of_hanoi'


describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }
  let(:towers) {[[3, 2, 1],[],[]]}
  let(:game_won) { TowersOfHanoi.new([[],[],[3,2,1]])}
  let(:tower_1) { towers[0] }
  let(:tower_2) { towers[2] }


  describe '#initialize' do
    it "sets up the towers" do
      expect(game.towers).to eq(towers)
    end
  end

  describe '#move' do
    it "destination tower receives a new disk" do
      game.move(tower_1, tower_2)
      expect(tower_2).to eq([1])
    end

    it "origin tower pops off top disc" do
      game.move(tower_1, tower_2)
      expect(tower_1).to eq([3,2])
    end

    it "raises if invalid" do
      expect(game).to receive(:valid_move?).and_return(false)
      expect { game.move(tower_2, tower_1) }.to raise_error(MoveError)
    end
  end

  describe '#render' do
    it 'prints the board to the terminal' do
      output = game.render
      expect(output).to eq("#{towers}")
    end
  end

  describe '#won?' do
    it 'returns false when the game is not over' do
      expect(game.won?).to eq(false)
    end

    it 'returns true when the game is over' do
      expect(game_won.won?).to eq(true)
    end
  end

  describe '#play' do
    it ''

  end


end
