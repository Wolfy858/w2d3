class Hand
  attr_reader :cards_in_hand, :deck

  def initialize(deck, num = 5)
    @cards_in_hand = []
    @deck = deck
    draw(num)
  end

  def draw(num)
    raise HandError if num + cards_in_hand.size > 5
    num.times  { cards_in_hand << deck.pop }
  end

  def discard(*cards)
    cards.each {|card| cards_in_hand.delete(card)}
    # p cards_in_hand
  end

end

class HandError < RuntimeError
end
