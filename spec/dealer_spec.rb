require './lib/dealer'

describe Dealer do
  it "repartir dos cartas y evaluar que no se encuentre en la baraja" do
    #arrange
    dealer = Dealer.new
    #act
    cartaNueva = dealer.repartirCarta
    listLength = dealer.listLength
    exist = dealer.isCarta cartaNueva
    #assert
    listLength.should == 11
    exist.should == nil
  end
end
