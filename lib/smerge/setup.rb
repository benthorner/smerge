require 'smerge'
using Smerge::Local

Smerge.setup do |c|
  c.rule Object, Object do |left, right|
    right
  end

  c.rule Object, nil do |left, right|
    left
  end

  c.rule Array, Array do |left, right|
    (left + right).uniq
  end

  c.rule Hash, Hash do |left, right|
    keys = left.keys + right.keys

    keys.reduce({}) do |result, key|
      l, r = left[key], right[key]
      result[key] = l.smerge(r); result
    end
  end
end
