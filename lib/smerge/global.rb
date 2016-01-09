require 'smerge'
require 'smerge/utility/patch'

class Object
  def smerge(obj)
    Smerge::Utility::Patch.call(self, obj)
  end
end
