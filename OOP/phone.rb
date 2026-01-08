# frozen_string_literal: true

# 카메라 기능 모듈
module Camera
  def take_photo
    puts '찰칵!'
  end
end

# 인터넷 접속 기능 모듈
module Internet
  def browse_web
    puts '인터넷 접속!'
  end
end

# 부모 클래스
class Phone
  def call
    puts '따르릉~'
  end
end

# 자식 클래스
class SmartPhone < Phone
  include Camera
  include Internet
end

# 테스트
smart_phone = SmartPhone.new
smart_phone.call
smart_phone.take_photo
smart_phone.browse_web
