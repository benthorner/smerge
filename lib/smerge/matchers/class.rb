module Smerge
  module Matchers
    refine Class do
      def match(obj); obj.kind_of? self end
    end
  end
end
