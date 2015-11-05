require 'card'

describe Card do
  subject(:ace_of_spades) {Card.new(14, :spade)}

  describe '#initialize' do
    it 'sets up a card\'s suit' do
      expect(ace_of_spades.suit).to eq(:spade)
    end
    it 'sets up a card\'s value' do
      expect(ace_of_spades.value).to eq(14)
    end
    
  end


end
