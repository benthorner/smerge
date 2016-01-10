require 'spec_helper'
require 'smerge/imports/global'

describe 'Global' do
  let(:objects) { [Object.new, Object.new] }
  let(:engine) { double :engine, call: true }

  before do
    allow(Smerge::Engine).to receive(:new) { engine }
  end

  it 'patches smerge on all objects' do
    expect(engine).to receive(:call).with(*objects)
    objects[0].smerge objects[1]
  end
end
