require 'httparty'
module Alicloud
  module Api
    class Http
      include ::HTTParty

      format :json
      headers 'Content-Type' => 'application/json'
      debug_output Alicloud::Api.config.debug ? $stderr : nil

      default_timeout 5
    end
  end
end
