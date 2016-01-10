require 'smerge'

class Object
  def smerge(obj)
    Smerge.engine.call(self, obj)
  end
end
