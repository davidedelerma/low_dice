require_relative "game"
require_relative "dice"
require_relative "player" 
require_relative "viewer"

class LowDice
  
  def initialize(viewer)
    #@dice=dice
    @viewer=viewer

    player_1_name = @viewer.get_player_name(1)
    player_2_name = @viewer.get_player_name(2)
    player_3_name = @viewer.get_player_name(3)

    player1=Player.new(player_1_name,Dice.new)
    player2=Player.new(player_2_name,Dice.new)
    player3=Player.new(player_3_name,Dice.new)

    @players=[player1, player2, player3]

    @game=Game.new(@players)
  end

  def run()
    for i in (1..(@players.count*5))
      @viewer.start(@game.current_player.name)
      @game.next_turn
      @viewer.show_update( @game.log.last() )
    end
    @game.create_hash
    @game.find_winner
    @viewer.end(@game.winner)

  end
end

game= LowDice.new(Viewer.new)
game.run()