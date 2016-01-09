module Smerge
  module Config
    class Rule
      attr_reader :left
      attr_reader :right

      def initialize(left, right, block)
        @left = left; @right = right
        @block = block
      end

      def call(left, right)
        @block.call(left, right)
      end
    end
  end
end
