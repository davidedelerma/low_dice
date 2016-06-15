require 'minitest/autorun'
require_relative '../player'
require_relative '../dice'


class TestPlayer < Minitest::Test

  def test_check_for_name
    player1=Player.new("Dav",Dice.new)
    assert_equal("Dav",player1.name)
  end

  def test_initial_score
    player1=Player.new("Dav",Dice.new)
    assert_equal(0,player1.score)
  end

  def test_rolls_count
    
    player1=Player.new("Dav",Dice.new)
    
    assert_equal(5, player1.turn.count)
  end

  def test_sum_array
    player1=Player.new("Dav",Dice.new)
    player1.rolls_array.push(1, 2, 3, 4)

    total = player1.sum
    assert_equal(10, total)
  end
end