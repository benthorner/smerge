module Smerge
  module Matchers
    refine String do
      def match(obj); self == obj end
    end
  end
end
