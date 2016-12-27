# 阿里短信服务
module Alicloud
  module Api
    class Sms < Service
      subdomain :sms

      class << self
        # ParamString
        # RecNum
        # SignName
        # TemplateCode
        def send(options = {})
          get '/singleSendSms', {query: options}
        end
      end
    end
  end
end
