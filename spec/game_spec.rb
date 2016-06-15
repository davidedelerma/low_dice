require 'minitest/autorun'
require_relative '../game'
require_relative '../player'


class TestGame < Minitest::Test
  
  def setup
    @player1=Player.new("Dav",Dice.new)
    @player2=Player.new("Ren",Dice.new)
    @player3=Player.new("Bri",Dice.new)

    players=[@player1, @player2, @player3]

    @game=Game.new(players)
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

  def test_create_results_hash
      dav=Player.new("Dav",Dice.new)
      ren=Player.new("Ren",Dice.new)
      bri=Player.new("Bri",Dice.new)
      dav.rolls_array.push(1, 1, 1, 1, 2)
      ren.rolls_array.push(1, 1, 1, 1, 3)
      bri.rolls_array.push(1, 1, 1, 1, 4)

      players_new=[dav, ren, bri]

      game=Game.new(players_new)

      expected_result={dav.name => 6, ren.name => 7, bri.name => 8}

      assert_equal(expected_result,game.create_hash)
  end

  # def test_find_winner

  #   dav=Player.new("Dav",Dice.new)
  #   ren=Player.new("Ren",Dice.new)
  #   bri=Player.new("Bri",Dice.new)
  #   dav.rolls_array.push(1, 1, 1, 1, 2)
  #   ren.rolls_array.push(1, 1, 1, 1, 3)
  #   bri.rolls_array.push(1, 1, 1, 1, 4)

  #   players_new=[dav, ren, bri]

  #   game=Game.new(players_new)
  #   game.create_hash
  #   assert_equal("Dav",game.find_winner)

  # end


end