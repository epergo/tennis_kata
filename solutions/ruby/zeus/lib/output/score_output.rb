module Output
  class ScoreOutput
    class << self
      def score(match_score)
        output_klass(match_score).score(match_score)
      end

      private

      def output_klass(match_score)
        if match_score.won_game?
          WonMatchOutput
        elsif match_score.draw?
          DrawOutput
        elsif match_score.max_score.points >= 4
          AdvantageOutput
        else
          NormalPointsOutput
        end
      end
    end
  end
end
