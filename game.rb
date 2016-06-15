class Game
  def initialize (players)
    @players=players
    @current_player = players[0]
    @winner=nil

  end

  def nb_of_players
    return @players.count
  end

end

