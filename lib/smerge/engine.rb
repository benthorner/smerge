module Smerge
  class Engine
    def initialize(rules)
      @rules = rules
    end

    def call(left, right)
      @rules.each do |rule|
        next unless rule.match(left, right)
        return rule.execute(left, right)
      end

      nil
    end
  end
end
