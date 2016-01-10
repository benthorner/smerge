require 'spec_helper'
using Smerge::Matchers

describe Object do
  describe '#match' do
    it 'returns true for equal objects' do
      expect(subject.match subject).to be_truthy
    end

    it 'returns false for unequal objects' do
      expect(subject.match Object.new).to be_falsey
    end
  end
end
