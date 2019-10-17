module Output
  class NormalPointsOutput
    SCORES = { 0 => 'Love', 1 => 'Fifteen', 2 => 'Thirty', 3 => 'Forty' }.freeze
    class << self
      def score(match_score)
        match_score.score.values.map { |points| SCORES[points] }.join('-')
      end
    end
  end
end
