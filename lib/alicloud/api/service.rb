require 'uri'
module Alicloud
  module Api
    class Service
      class << self
        def subdomain(name)
          @subdomain = name
        end

        def authorization_token
          raise 'app code is empty' if Alicloud::Api.config.app_code.nil?
          { 'Authorization' => "APPCODE #{Alicloud::Api.config.app_code}" }
        end

        def get(path, options = {})
          Alicloud::Api::Http.get URI.join(uri, path), options.merge(headers: authorization_token)
        end

        private

        def host
          [@subdomain, Alicloud::Api.config.domain].join('.')
        end

        def uri
          "#{Alicloud::Api.config.scheme}://#{host}"
        end
      end
    end
  end
end
