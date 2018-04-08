# 全国省市县行政区划
# Alicloud::Api::Area.all(level: 1)
# Alicloud::Api::Area.all(level: 1, page: 2)
# Alicloud::Api::Area.find_by "211202001000"
module Alicloud
  module Api
    class Area < Service
      host "http://ali-city.showapi.com"

      class << self
        def all(opts = {})
          get '/areaName', query: {maxSize: 20}.merge(opts)
        end

        def find_by(parent_id)
          get '/areaDetail', query: { parentId: parent_id }
        end
      end
    end
  end
end
