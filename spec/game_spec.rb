require 'minitest/autorun'
require_relative '../game'
require_relative '../player'


class TestGame < Minitest::Test
  
  def setup
    @player1=Player.new("Dav")
    @player2=Player.new("Ren")
    @player3=Player.new("Bri")

    players=[@player1, @player2, @player3]

    @game=Game.new(players)
  end

  def test_count_players
    assert_equal(3,@game.nb_of_players)
  end  
end