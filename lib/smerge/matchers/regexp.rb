module Smerge
  module Matchers
    refine Regexp do
      alias_method :match_string, :match

      def match(obj)
        match_string(obj)
      rescue TypeError => _
        false
      end
    end
  end
end
