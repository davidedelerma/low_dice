class Dice

  def initialize
    @rolls = (1..6)
  end

  def roll
    return value=rand(@rolls)
  end
  
end