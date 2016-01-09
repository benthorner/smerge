require 'smerge/config/rule'

module Smerge
  module Config
    def self.rule(left, right, &block)
      rules << Rule.new(left, right, block)
    end

    def self.rules; @rules ||= [] end
  end
end
