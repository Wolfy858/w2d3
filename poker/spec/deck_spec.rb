require 'deck'

describe Deck do

  subject(:deck) { Deck.new }
  let(:unshuffled_deck) { Deck.new(false) }
  let(:suits) { [:spade, :heart, :diamond, :club] }

  describe '#initialize' do
    it 'instantiates an array that hold cards' do
      expect(deck.cards.class).to be(Array)
    end
  end

  describe '#populate' do
    it 'fills the deck with 52 cards' do
      expect(deck.cards.size).to eq(52)
    end

    it 'adds 13 cards of each suit' do
      spade_count = deck.cards.select { |card| card.suit == :spade}.size
      expect(spade_count).to eq(13)
    end
  end
  describe '#shuffle' do
    it 'randomizes the order of the cards' do
      expect(unshuffled_deck).to_not eq(unshuffled_deck.shuffle)
    end
  end




end
