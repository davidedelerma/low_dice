require 'minitest/autorun'
require_relative '../game'
require_relative '../player'


class TestGame < Minitest::Test
  
  def setup
    @player1=Player.new("Dav",Dice.new)
    @player2=Player.new("Ren",Dice.new)
    @player3=Player.new("Bri",Dice.new)

    players=[@player1, @player2, @player3]

    @game=Game.new(players,4)
  end

  def test_count_players
    assert_equal(3,@game.nb_of_players)
  end  

  def test_current_player_starts_as_player_1
    assert_equal(@player1, @game.current_player)
  end

  def test_can_update_current_player
    @game.update_current_player
    assert_equal(@player2, @game.current_player)
  end

  def test_next_turn
    @game.next_turn
    assert_equal(5,@player1.rolls_array.count)
    assert_equal("Ren",@game.current_player.name)

  end

  # def test_who_is_winner
  #   player1=Player.new("Dav",Dice.new)
  #   player2=Player.new("Ren",Dice.new)
  #   player3=Player.new("Bri",Dice.new)
  #   res1=player1.rolls_array.push(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2)
  #   res2=player2.rolls_array.push(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3)
  #   res3=player3.rolls_array.push(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4)

  #   winner=@game.winner([res1,res2,res3])
  #   assert_equal("Dav",winner)

  # end
end