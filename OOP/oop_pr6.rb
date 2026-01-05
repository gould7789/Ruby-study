# frozen_string_literal: true

# 클래스 변수와 인스턴스 변수의 차이
class CafeCustomer
  # 클래스 변수 - @@
  # 이 변수는 클래스 자체에 딱 하나만 존재
  # 모든 손님이 이 숫자를 공유함
  @@total_visitors = 0

  # @name을 읽을 수 있게 함
  attr_reader :name

  def initialize(name)
    # 인스턴수 변수 - @
    # 이 변수는 태어나는 객체(손님)마다 따로따로 가짐
    @name = name

    # 손님이 올 때마다 전체 방문자 수(공유 변수)를 1씩 늘림
    @@total_visitors += 1
  end

  def introduce
    puts "손님: 제 이름은 #{@name}입니다."
    puts " -> 저는 지금 카페의 #{@@total_visitors}번째 손님입니다."
  end

  # 클래스 변수를 확인하기 위한 클래스 메서드
  def self.show_total
    puts "--- 현재까지 총 방문자 수: #{@@total_visitors}}명 ---"
  end
end

# 첫 번째 손님
customer1 = CafeCustomer.new('철수')
customer1.introduce # 철수의 @name은 '철수', @@total_visitors는 1

puts

# 두 번째 손님
customer2 = CafeCustomer.new('영희')
customer2.introduce # 영희의 @name은 '영희', @@total_visitors는 2(공유되기 때문)

puts

# 세 번째 손님
customer3 = CafeCustomer.new('길동')
customer3.introduce # 길동의 @name은 '길동', @@total_visitors는 3

puts

# 전체 확인
CafeCustomer.show_total

puts

# 철수(customer1)에게 다시 방문자 수를 물어봐도 3명이라고 대답함
# @@변수는 모두가 공유하기 때문
customer1.introduce
