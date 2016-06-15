require 'minitest/autorun'
require_relative '../player'

class TestPlayer < Minitest::Test

  def test_check_for_name
    @player1=Player.new("Dav")
    assert_equal("Dav",@player1.name)
  end

  def test_initial_score
    @player1=Player.new("Dav")
    assert_equal(0,@player1.score)
  end
end