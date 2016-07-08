require './lib/dealer'

describe Dealer do
  it "repartir una carta y evaluar que no se encuentre en la baraja" do
    #arrange
    dealer = Dealer.new
    #act
    cartaNueva = dealer.repartirCarta
    listLength = dealer.listLength
    #assert
    listLength.should == 11
  end
end
