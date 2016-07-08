require './lib/dealer'

describe Dealer do
  it "repartir una carta y evaluar que no se encuentre en la baraja" do
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

  it "repartir dos cartas y evaluar que no se encuentre en la baraja" do
    #arrange
    dealer = Dealer.new
    #act
    carta1 = dealer.repartirCarta
    carta2 = dealer.repartirCarta
    listLength = dealer.listLength
    exist1 = dealer.isCarta carta1
    exist2 = dealer.isCarta carta2
    #assert
    listLength.should == 10
    exist1.should == nil
    exist2.should == nil
  end
  
end
