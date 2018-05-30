require 'rspec'
require 'deck'

describe 'Deck' do
  describe '::suits' do
    it "return an array of all the possible suits" do
      suits =[
        :heart, :diamond, :spade, :club
      ]
      expect(Deck.suits).to eq(suits)
    end
  end
  describe '::values' do
    it "returns an array of all the possible values" do
      values = [
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
      expect(Deck.values).to eq(values)
    end
  end
  describe '#initialize' do
    context "when no arguments are given, default deck" do
      subject(:deck) { Deck.new }
      it "creates the default deck" do
        expect(deck.cards.length).to eq(52)
      end
    end

    context "when arguments are given" do
      subject(:pass_in_cards) { Deck.new([]) }
      it "initializes with the given cards" do
        expect(pass_in_cards.cards).to eq([])
      end
    end
  end
end
