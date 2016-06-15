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
    return @rolls_array
  end

  def sum
     sum = 0
     for count in @rolls_array
       sum += count
     end
     return sum
  end

end