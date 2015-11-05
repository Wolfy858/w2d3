require_relative 'card'

class Deck
  attr_accessor :cards

  def initialize(shuffled = true)
    @cards = []
    populate
    shuffle if shuffled
  end

  def shuffle
    @cards.shuffle!
  end

  def populate
    suit_array = [:spade, :heart, :diamond, :club]
    suit_array.each do |suit|
      (2..14).each do |value|
        cards << Card.new(value, suit)
      end
    end
  end

  def pop
    cards.pop
  end

end
