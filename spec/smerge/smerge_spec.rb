require 'spec_helper'
using Smerge::Local

describe 'Smerging' do
  describe '#smerge' do
    it 'favours the RHS by default' do
      o1, o2 = Object.new, Object.new
      expect(o1.smerge o2).to eq o2
    end

    it 'favours LHS when RHS is nil' do
      o = Object.new
      expect(o.smerge nil).to eq o
    end

    it 'combines arrays as sets' do
      a1, a2 = [1, 2], [1,3,4]
      expect(a1.smerge a2).to eq [1,2,3,4]
    end

    it 'combines hashes recursively' do
      h1 = { a: 1, c: { d: 2 } }
      h2 = { b: 3, c: { e: 4 } }

      expect(h1.smerge h2).to eq(
        a: 1, b: 3, c: { d: 2, e: 4 }
      )
    end
  end
end
