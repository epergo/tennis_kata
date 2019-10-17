module Output
  class AdvantageOutput
    class << self
      def score(match_score)
        "Advantage #{match_score.max_score.name}"
      end
    end
  end
end
