require './lib/deck.rb'

describe Deck do
  it "se crea un deck con cartas, debe tener 52 cartas" do
    deck = Deck.new
    deck.remaining.should == 52
  end

  it "se toman 3 cartas y deben ser diferentes" do
    deck = Deck.new
    deck.shuffle!
    carta1 = deck.draw
    carta2 = deck.draw
    carta3 = deck.draw
    carta1.to_s.should_not == carta2.to_s
    carta2.to_s.should_not == carta3.to_s
  end
end
