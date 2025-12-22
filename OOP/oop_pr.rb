# frozen_string_literal: true

# 클래스 정의
class Dog
  # 초기화 메서드: 생성자(initailize)
  # Dog.new를 호출 할 때 가장 먼저 실행되는 메서드
  def initialize(name, breed)
    # @가 붙은 변수는 '인스턴스 변수'
    # 이 변수는 만들어진 객체(강아지) 내에서 계속 기억됨
    @name = name # 이름
    @breed = breed # 견종
  end

  # 행동 정의(메서드)
  def bark
    puts "#{@name}(#{@breed})가 멍멍하고 짖습니다!"
  end

  def introduce
    puts "저는 #{@breed}이고, 이름은 #{@name}입니다."
  end
end

# 객체 생성(실제 강아지 만들기)
# Dog 클래스를 이용해 dog1과 dog2(객체)를 만듦
dog1 = Dog.new('바둑이', '진돗개')
dog2 = Dog.new('초고', '푸들')

# 객체 사용(메서드 호출)
puts '첫 번재 강아지'
dog1.introduce
dog1.bark

puts '두 번재 강아지'
dog2.introduce
dog2.bark

# 클래스 정의
class Car
  # 생성자
  def initialize(model, color)
    @model = model # 차종
    @color = color # 색상
  end

  def drive
    puts "#{@color}색 #{@model}가 달립니다."
  end
end

# 객체 생성
car = Car.new('밴츠', '검정')

# 객체 사용
car.drive
