class Dealer
  attr_accessor:listCartas

  def initialize
    @listCartas = ['A','2','3','4','5','6','7','8','9','J','Q','K']
  end
  def repartirCarta
      carta= listCartas[rand(listCartas.size)]
      listCartas.delete(carta)
      return carta
  end

  def listLength
      return listCartas.size
  end

end
