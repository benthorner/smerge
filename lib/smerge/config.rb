require 'smerge/models/rule'

module Smerge
  class Config
    def rule(left, right, &block)
      rules << Rule.new(left, right, block)
    end

    def rules; @rules ||= [] end
  end
end
