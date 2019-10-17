require 'ostruct'

class MatchScore
  attr_reader :score

  def initialize(player1_name, player2_name)
    @score = { player1_name => 0, player2_name => 0 }
  end

  def point_for!(player)
    @score[player] += 1
  end

  def draw?
    @score.values.uniq.size <= 1
  end

  def won_game?
    (@score.values.first - @score.values.last).abs >= 2 && max_score.points > 3
  end

  def max_score
    max_score_array = @score.sort_by { |_player_name, points| points }.reverse.to_h.first
    OpenStruct.new(name: max_score_array.first, points: max_score_array.last)
  end
end
