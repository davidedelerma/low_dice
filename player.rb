require_relative './dice'

class Player
  attr_reader(:name, :score, :rolls_array)
  #attr_accessor(:array)
  def initialize(name, dice)
    @name=name
    @score=0
    @rolls_array = []
    @dice=dice
  end

  def turn
    for count in (1..5)
    roll = @dice.roll
    @rolls_array << roll
    end

  end

  def sum
     sum = 0
     for x in @rolls_array
       sum += x
     end
     return sum
  end

end