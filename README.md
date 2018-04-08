# Alicloud::Api

## Description

阿里云市场API

* [阿里短信服务](https://market.aliyun.com/products/57002003/cmapi011900.html?spm=5176.78296.437427.1.3crenp#sku=postpay)
* [身份证实名认证](https://market.aliyun.com/products/57000002/cmapi012484.html?spm=5176.8216963.521665.3.bsQMJd#sku=yuncode648400000)
* [身份证实名认证返照片接口](https://market.aliyun.com/products/57000002/cmapi012505.html?spm=5176.8216963.521665.5.bsQMJd#sku=yuncode650500004)
* ~~[全国省市县行政区划](https://market.aliyun.com/products/57002002/cmapi011793.html#sku=yuncode579300000)~~
* [全国省市县行政区划](https://market.aliyun.com/products/57126001/cmapi011154.html?spm=a2c2e.8906434.0.0.5fae1eealjdw3s#sku=yuncode515400003)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alicloud-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alicloud-api

## Usage

Alicloud::Api.configure do |config|
  config.debug = true
  config.app_code = 'your app code'
end

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


