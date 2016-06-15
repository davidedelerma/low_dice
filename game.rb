class Game
  
  attr_reader :current_player

  def initialize (players)
    @players=players
    @current_player = players[0]
    @winner=nil

  end

  def nb_of_players
    return @players.count
  end

  def update_current_player
    @current_player=@players.rotate![0]
  end
end

