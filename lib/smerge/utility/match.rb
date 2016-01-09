module Smerge
  module Utility
    module Match
      refine Object do
        def match(obj); self == obj end
      end

      refine Class do
        def match(obj); obj.kind_of? self end
      end
    end
  end
end
