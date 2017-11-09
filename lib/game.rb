class Game

 attr_reader :hp2

def initialize(player_number_1, player_number_2)
 @player_number_1 = player_number_1
 @player_number_2 = player_number_2
end

  def attack_2
    $hp2 -= 10
  end

  def attack_1
    $hp1 -= 10
  end

  def switch_turn
    $count += 1
  end

  def return_name_1
    @player_number_1.return_name
  end

  def return_name_2
    @player_number_2.return_name
  end
end
