module Smerge
  class Engine
    using Matchers

    def initialize(rules)
      @rules = rules
    end

    def call(left, right)
      @rules.each do |rule|
        next unless rule.match(left, right)
        return rule.call(left, right)
      end

      right
    end
  end
end
