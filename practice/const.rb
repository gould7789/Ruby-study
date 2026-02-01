# frozen_string_literal: true

# 定数: 大文字で始まる変更されない値
# プログラム全体で共有する固定値に使用
class Product
  TAX_RATE = 0.2

  def total_price(price)
    price * (1 + TAX_RATE)
  end
end

product = Product.new
puts product.total_price(1000)

puts

# 설정 정보를 알 수 있는 메서드
class Settings
  DEFAULT_TIMEOUT = 30
end

# 이런 형식으로도 호출 가능
puts Settings::DEFAULT_TIMEOUT

# 정수를 변경하려고 하면 경고가 나옴 -> 변경은 됨
Settings::DEFAULT_TIMEOUT = 60
puts Settings::DEFAULT_TIMEOUT

puts

# freeze 사용
class Configuration
  SETTINGS = {
    timeout: 30,
    retries: 3
  }.freeze
end

puts Configuration::SETTINGS[:timeout]
Configuration::SETTINGS[:timeout] = 60 # freeze를 설정했기 때문에 에러 발생
puts Configuration::SETTINGS[:timeout]
