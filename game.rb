require "pry-byebug"
class Game
  
  attr_reader :current_player, :players, :winner, :log

  def initialize (players)
    @players=players
    @current_player = players[0]
    @winner=[]
    @hash_results=Hash.new
    @log = []

  end

  def nb_of_players
    return @players.count
  end

  def update_current_player()
    @current_player=@players.rotate![0]
  end

  def next_turn
    rolls = @current_player.turn
    sum=@current_player.sum
    @log.push( { player: @current_player.name, rolls: rolls, total_sum: sum  } )
    update_current_player()
  end

  def create_hash
    for player in @players
      @hash_results[player.name]=player.sum
    end
    return @hash_results
  end

  def find_winner
    win_score=@hash_results.values.min

    for score in @hash_results
      #binding.pry
      if (score[1] == win_score)
        return @winner << score[0]
      #  puts "#{score[0]} wins!"
      end 
    end
  end


end

