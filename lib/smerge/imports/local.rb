require 'smerge'

module Smerge
  module Local
    refine Object do
      def smerge(obj)
        Smerge.engine.call(self, obj)
      end
    end
  end
end
