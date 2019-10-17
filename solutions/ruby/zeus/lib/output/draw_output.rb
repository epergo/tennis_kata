module Output
  class DrawOutput
    DRAW_SCORES = { 0 => 'Love-All', 1 => 'Fifteen-All', 2 => 'Thirty-All' }.freeze
    DEUCE_SCORE = 'Deuce'.freeze
    class << self
      def score(match_score)
        DRAW_SCORES.fetch(match_score.max_score.points, DEUCE_SCORE)
      end
    end
  end
end
