class Game
  
  attr_reader :current_player

  def initialize (players,rounds)
    @players=players
    @current_player = players[0]
    @winner=nil
    @rounds=rounds

  end

  def nb_of_players
    return @players.count
  end

  def update_current_player
    @current_player=@players.rotate![0]
  end

  def next_turn
    @current_player.turn
    @current_player.sum
    update_current_player
  end
  # def winner_to_array
  #   results_array = []

  #   for player in @players
  #     player.sum
  #     results_array.push
  #   end
  #   winner = results_array.min
  #   for min in results_array
  #     if min = 
  # end


end

