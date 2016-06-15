class Dice

  def initialize
    @rolls = (1..6).to_a
  end

  def roll
    return @rolls.sample
  end
  
end