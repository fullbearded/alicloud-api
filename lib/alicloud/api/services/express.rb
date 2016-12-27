# 全国快递查询
module Alicloud
  module Api
    class Express < Service
      subdomain :jisukdcx

      class << self
        # 查询快递物流信息
        # bar_code 快递单号
        # type 快递公司, 默认 auto
        def query(bar_code, type = 'auto')
          get '/express/query', query: { number: bar_code, type: type }
        end

        # 获取所有快递公司
        def companies
          get '/express/type'
        end
      end
    end
  end
end
