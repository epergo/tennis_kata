module Output
  class WonMatchOutput
    class << self
      def score(match_score)
        "Win for #{match_score.max_score.name}"
      end
    end
  end
end
