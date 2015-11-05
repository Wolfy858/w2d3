require 'hand'
require 'deck'

describe Hand do
  subject(:hand) { Hand.new(Deck.new) }
  let(:empty_hand) { Hand.new(Deck.new, 0) }

  describe "initialize" do
    it 'instantiates a current hand array with 5 cards' do
      expect(hand.cards_in_hand.size).to eq(5)
    end

    it 'only deals in cards' do
      all_cards = hand.cards_in_hand.all? { |card| card.is_a?(Card)}
      expect(all_cards).to be true
    end
  end

  describe '#draw' do
    it 'pops cards off of deck' do
      empty_hand.draw(5)
      expect(hand.deck.cards.size).to eq(47)
    end
    it 'adds cards to cards_in_hand' do
      empty_hand.draw(5)
      expect(hand.cards_in_hand.size).to eq(5)
    end
    it 'raises an error when current hand exceeds 5 cards' do
      expect { hand.draw(1) }.to raise_error(HandError)
    end
  end

  describe '#discard' do
    it 'discards the specified cards' do
      card1 = hand.cards_in_hand[0]
      hand.discard(card1)
      expect(hand.cards_in_hand).to_not include(card1)
    end
    it 'discards multiple cards' do
      three_cards = hand.cards_in_hand[0..2]
      p three_cards
      hand.discard(three_cards)
      expect(hand.cards_in_hand.size).to eq(2)
    end
  end

end
