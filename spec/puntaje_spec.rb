require './lib/deck.rb'

describe Deck do
  it "Al tener dos cartas, se quiere saber el puntaje" do
    deck = Deck.new
    carta1 = deck.draw
    carta2 = deck.draw
    valor = carta1.value.to_i + carta2.value.to_i
    valor.should == carta1.value.to_i + carta2.value.to_i
  end
end
