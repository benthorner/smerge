require 'smerge/utility/match'
require 'smerge/config'

module Smerge
  module Utility
    module Patch
      using Utility::Match

      def self.call(left, right)
        rules = Smerge::Config.rules.reverse

        rules.each do |rule|
          next unless rule.left.match left
          next unless rule.right.match right

          return rule.call(left, right)
        end
      end
    end
  end
end
