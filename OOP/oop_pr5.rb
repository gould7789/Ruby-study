# frozen_string_literal: true

class Robot
  # @@는 '클래스 변수'라고 함
  # 모든 로봇들이 공유하는 하나의 숫자판
  @@count = 0

  def initialize(name)
    @name = name
    @@count += 1 # 로봇이 태어날 때마다 카운트를 1 올림
    puts "#{@name} 로봇 제작 완료"
  end

  # 인스턴스 메서드 (로봇 개별의 행동)
  # robot.hello 처럼 객체가 있어야 쓸 수 있음
  def hello
    puts "[#{@name}] 안녕하세요!"
  end

  # 클래스 메서드 (공장의 기능)
  # 메서드 이름 앞에 'self.'을 붙임
  # Robot.count_check 처럼 클래스 이름으로 바로 부름
  def self.count_check
    puts "현재까지 제작된 로봇은 총 #{@@count}대입니다."
  end
end

# 연습

class Calculator
  def self.add(a, b)
    puts a + b
  end

  def self.subtract(a, b)
    puts a - b
  end
end

# --- 테스트 ---

# 아직 로봇을 만들기 전
Robot.count_check

puts "\n--- 생산 시작 ---"
r1 = Robot.new('알파')
r2 = Robot.new('베타')
r3 = Robot.new('감마')

# 개별 로봇의 인사(인스턴스 메서드)
r1.hello
r2.hello
r3.hello

puts "\n--- 생산 종료 ---"
# 공장 현황판 확인 (클래스 메서드)
# r1.count_check가 아니라 Robot.count_check를 사용
Robot.count_check

# 연습 출력
puts "\n--- 계산기 ---"
Calculator.add(10, 5)
Calculator.subtract(10, 5)
