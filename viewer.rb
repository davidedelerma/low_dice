class Viewer

  def get_player_name(player_number)
    puts "Player #{player_number}: Enter name"
    return gets.chomp
  end

  def start(player_name)
    puts
    puts "#{player_name} roll dice!"
    gets.chomp
  end

  def show_update(entry)
    puts "#{entry[:player]} rolled #{entry[:rolls][-5..-1]}; total score so far: #{entry[:total_sum]}"

  end

  def end(winner_name)
    puts "Congratulations, #{winner_name} wins"
  end
end