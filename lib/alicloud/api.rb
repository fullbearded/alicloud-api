require 'dry-configurable'

module Alicloud
  module Api
    extend Dry::Configurable
    setting :app_code
    setting :debug, false
    setting :domain, 'market.alicloudapi.com'
    setting :scheme, 'http'
  end
end

require 'alicloud/api/http'
require 'alicloud/api/service'

module Alicloud
  module Api
    autoload :Sms, 'alicloud/api/services/sms'
    autoload :Area, 'alicloud/api/services/area'
    autoload :Express, 'alicloud/api/services/express'
  end
end
