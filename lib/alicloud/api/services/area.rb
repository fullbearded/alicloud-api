# 全国省市县行政区划
module Alicloud
  module Api
    class Area < Service
      subdomain :jisuarea

      class << self
        def all
          get '/area/all'
        end

        def find_by(parent_id)
          get '/area/query', query: { parentid: parent_id }
        end
      end
    end
  end
end
