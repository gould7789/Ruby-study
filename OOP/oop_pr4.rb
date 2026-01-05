# frozen_string_literal: true

# 모듈 정의
# class가 아니라 module이라고 씀
module Flyable
  def fly
    puts "#{@name}이(가) 하늘을 날아갑니다."
  end
end

module Swimmable
  def swim
    puts "#{@name}이(가) 수영합니다."
  end
end

# 클래스 정의
class Bird
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # 모듈
  include Flyable
end

class Fish
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # 모듈
  include Swimmable
end

# 모듈 두 개
class Duck
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # 모듈은 여러 개 사용 가능
  include Flyable
  include Swimmable
end

# 연습
module LaserBeam
  def shoot_laser
    puts '눈에서 레이저가 나갑니다.'
  end
end

module SuperStrength
  def lift_truck
    puts '트럭을 한 손으로 들어 올립니다.'
  end
end

class Superman
  include SuperStrength
  include LaserBeam
end

# 객체 생성
bird = Bird.new('참새')
bird.fly

puts '----'
fish = Fish.new('물고기')
fish.swim

puts '----'
duck = Duck.new('오리')
duck.fly
duck.swim

puts '----'
superman = Superman.new
superman.shoot_laser
superman.lift_truck
