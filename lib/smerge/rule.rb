require 'smerge/matchers/class'
require 'smerge/matchers/object'
require 'smerge/matchers/regexp'
require 'smerge/matchers/string'

module Smerge
  class Rule
    using Matchers

    attr_accessor :left
    attr_accessor :right
    attr_accessor :block

    def initialize(left, right, block)
      self.left = left
      self.right = right
      self.block = block
    end

    def match(left, right)
      self.left.match(left) &&
        self.right.match(right)
    end

    def call(left, right)
      self.block.call(left, right)
    end
  end
end
