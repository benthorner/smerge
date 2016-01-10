require 'spec_helper'
using Smerge::Matchers

describe Regexp do
  describe '#match' do
    it 'returns true for regexp matches' do
      expect(/.*/.match '123').to be_truthy
    end

    it 'returns false for regexp mismatches' do
      expect(/123/.match '12').to be_falsey
    end

    it 'returns false for regexp non-strings' do
      expect(/.*/.match Object.new).to be_falsey
    end
  end
end
