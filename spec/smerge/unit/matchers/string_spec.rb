require 'spec_helper'
using Smerge::Matchers

describe String do
  describe '#match' do
    it 'returns true for equal strings' do
      expect('123'.match '123').to be_truthy
    end

    it 'returns false for unequal strings' do
      expect(''.match '123').to be_falsey
    end

    it 'returns false for non-strings' do
      expect('123'.match 123).to be_falsey
    end
  end
end
