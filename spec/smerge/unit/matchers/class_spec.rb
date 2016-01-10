require 'spec_helper'
using Smerge::Matchers

describe Class do
  describe '#match' do
    it 'returns true for direct instances' do
      expect(subject.match subject.new).to be_truthy
    end

    it 'returns true for child instances' do
      class Child < subject; end
      expect(subject.match Child.new).to be_truthy
    end

    it 'returns false for non-instances' do
      expect(subject.match Object.new).to be_falsey
    end
  end
end
