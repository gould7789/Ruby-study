# frozen_string_literal: true

class Car
  # attr_accessor :변수명 -> 읽기(Read)와 쓰기(Write)를 모두 허용
  # :model, #color는 각각 @model, @color 변수와 연결됨
  attr_accessor :model, :color

  # 생성자
  def initialize(model, color)
    @model = model
    @color = color
  end

  def drive
    puts "#{@color}색 #{@model}가 달립니다."
  end
end

# 객체 생성
my_car = Car.new('벤츠', '검정')

# attr_accessor 덕분에 .model로 @model 값을 가져올 수 있음
puts "내 차의 모델은 #{my_car.model}입니다."

# 값 변경하기
# attr_accessor 덕분에 .color = '값'으로 @color 값을 바꿀 수 있음
puts '도색을 합니다.'
my_car.color = '하양' # 검정 -> 하양으로 변경

my_car.drive

# attr 시리즈 연습
class BankAccount
  # 접근 제한자
  attr_reader :owner, :balance

  # 생성자
  def initialize(owner, balance)
    @owner = owner # 예금주
    @balance = balance # 잔액
  end

  def deposit(amount)
    @balance += amount
    puts "#{amount}원 입금 완료"
  end
end

# 객체 생성
bank = BankAccount.new('길동이', 10_000)

# 호출
bank.deposit(10_000)
puts "현재 잔액은 #{bank.balance}원입니다."
