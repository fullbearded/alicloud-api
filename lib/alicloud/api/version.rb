module Alicloud
  module Api
    MAJOR   = 0
    MINOR   = 0
    TINY    = 1
    PRE     = nil

    version = [MAJOR, MINOR, TINY].freeze
    version << "pre#{PRE}" unless PRE.nil?
    VERSION = version.join('.')
  end
end
