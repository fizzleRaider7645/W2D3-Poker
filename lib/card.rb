class Card
  attr_reader :suit, :value

  SUITS =[
    :heart, :diamond, :spade, :club
  ]

  VALUES = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    'j',
    'q',
    'k',
    'a'
  ]

  def initialize(suit, value)
    raise 'Invalid suit' unless SUITS.include?(suit)
    raise 'Invalid value' unless VALUES.include?(value)
    @suit = suit
    @value = value
  end
end
