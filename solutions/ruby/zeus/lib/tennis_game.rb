require_relative './match_score'
require_relative './output/score_output'
require_relative './output/draw_output'
require_relative './output/normal_points_output'
require_relative './output/advantage_output'
require_relative './output/won_match_output'

class TennisGame
  def initialize(player1_name, player2_name)
    @player1_name = player1_name
    @player2_name = player2_name
    @match_score = MatchScore.new(player1_name, player2_name)
  end

  def won_point(player)
    @match_score.point_for!(player)
  end

  def score
    Output::ScoreOutput.score(@match_score)
  end
end
