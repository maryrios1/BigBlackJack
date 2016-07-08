Suits = ["Clubs","Hearts","Spades","Diamonds"]
Ranks = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]

class Player
  attr_accessor :hand, :hand_value, :ace_count
  def initialize
      @hand = []
      @hand_value = 0
      @ace_count = ace_count
      2.times do
        card = $d.draw
        @hand_value == 0 ? @hand_value = card.value.to_i : @hand_value += card.value.to_i
        @hand << card
      end
  end

  def hit
    card = $d.draw
    @hand_value == 0 ? @hand_value = card.value.to_i : @hand_value += card.value.to_i
    @hand << card
  end

  def switch_ace
    while @hand_value > 21 && @ace_count > 0
      @ace_count -= 1
      @hand_value -= 10
    end
  end

  def to_s
    puts "#{@hand.to_s}, total value #{@hand_value}"
  end
end
