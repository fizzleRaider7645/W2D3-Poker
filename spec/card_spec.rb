require 'rspec'
require 'card'

describe 'Card' do
  describe '#initialize' do
    context 'Correct input' do
      subject(:card) {Card.new(:spade, '5')}

      it "sets a suit" do
        expect(card.suit).to eq(:spade)
      end

      it "sets a value" do
        expect(card.value).to eq('5')
      end
    end

    context 'Incorrect input' do
      let(:bad_suit) {Card.new(:cheese, 'a')}
      let(:bad_value) {Card.new(:heart, 'penguin')}

      it "only initializes with a valid suit" do
        expect{bad_suit}.to raise_error('Invalid suit')
      end

      it "only initializes with a valid value" do
        expect{bad_value}.to raise_error('Invalid value')
      end
    end
  end
end
