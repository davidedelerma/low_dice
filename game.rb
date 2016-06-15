class Game
  
  attr_reader :current_player, :players

  def initialize (players)
    @players=players
    @current_player = players[0]
    @winner=nil
    @hash_results=Hash.new

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

  def create_hash
    for player in @players
      @hash_results[player.name]=player.sum
    end
    return @hash_results
  end


end

