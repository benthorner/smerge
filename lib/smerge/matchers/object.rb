module Smerge
  module Matchers
    refine Object do
      def match(obj); self == obj end
    end
  end
end
