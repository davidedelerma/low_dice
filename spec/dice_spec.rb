require 'minitest/autorun'
require_relative '../dice'

class TestDice < Minitest::Test

  def test_is_an_integer
    dice1=Dice.new()
    value1=dice1.roll
    check1= value1.is_a? Integer
    assert_equal(true, check1)

  end 

  def test_values_between_1_and_6
    dice1=Dice.new()
    value1=dice1.roll
    con=true if value1>=1 && value1<=6
    assert_equal(true,con)
  end
end