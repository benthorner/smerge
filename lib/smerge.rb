require 'smerge/config'
require 'smerge/engine'

module Smerge
  def self.setup; yield config end

  def self.config
    @config ||= Config.new
  end

  def self.engine
    Engine.new(config.rules.reverse)
  end
end

require 'smerge/imports/local'
require 'smerge/setup'
