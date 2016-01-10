require 'spec_helper'

describe Smerge::Engine do
  let(:rule_1) { double :rule, match: false }
  let(:rule_2) { double :rule, match: false }

  subject { described_class.new([rule_1, rule_2]) }

  describe '#call' do
    before do
      allow(rule_1).to receive(:call).with(:left, :right) { :rule_1 }
      allow(rule_2).to receive(:call).with(:left, :right) { :rule_2 }
    end

    context 'when the first rule matches' do
      before do
        allow(rule_1).to receive(:match).with(:left, :right) { true }
      end

      it 'returns the result of the first rule' do
        expect(subject.call :left, :right).to eq :rule_1
      end
    end

    context 'when the second rule matches' do
      before do
        allow(rule_2).to receive(:match).with(:left, :right) { true }
      end

      it 'returns the result of the second rule' do
        expect(subject.call :left, :right).to eq :rule_2
      end
    end

    context 'when the both rules match' do
      before do
        allow(rule_1).to receive(:match).with(:left, :right) { true }
        allow(rule_2).to receive(:match).with(:left, :right) { true }
      end

      it 'returns the result of the first rule' do
        expect(subject.call :left, :right).to eq :rule_1
      end
    end

    context 'when neither rule matches' do
      it 'returns the right hand-side' do
        expect(subject.call :left, :right).to eq :right
      end
    end
  end
end
