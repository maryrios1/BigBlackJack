require './lib/card.rb'

describe Card do
  it "se crea una carta con valor A" do
    carta = Card.new 1,"Corazon"
    carta.value.should == 11
  end

  it "se crea una carta con valor K de diamantes y regresa 10 de diamantes" do
    carta = Card.new 13,"Diamante"
    carta.value.should == 10
  end
end
