require 'smerge/config'
require 'smerge/utility/patch'

module Smerge
  def self.setup
    yield Smerge::Config
  end

  refine Object do
    def smerge(obj)
      Utility::Patch.call(self, obj)
    end
  end
end

require 'smerge/setup'
