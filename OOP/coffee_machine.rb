# frozen_string_literal: true

# 커피 머신 만들기
class CoffeeMachine
  def initialize(beans, water)
    @beans = beans
    @water = water

    puts '커피를 만듭니다.'
  end

  def brew
    # 재료가 부족할 때 에러 발생
    raise '재료 부족!' if @beans < 10 || @water < 100

    # 재료가 충분할 때 재료 차감
    @beans -= 10
    @water -= 100

    # 재료가 충분할 때 커피 제조
    puts "커피가 나왔습니다!\n[현재 원두의 양]: #{@beans}\n[현재 물의 양]: #{@water}"

    # 재료가 부족해서 에러가 났을 때는 이곳으로 이동
  rescue RuntimeError
    puts '재료가 부족합니다. 채워주세요.'
  end

  # 재료를 채워주는 메서드
  def refill(beans, water)
    @beans += beans
    @water += water

    puts "[현재 원두의 양]: #{@beans}\n[현재 물의 양]: #{@water}"
  end
end

# 기계 설치 (원두 20g, 물 150ml)
puts '--- 기계 설치 ---'
my_machine = CoffeeMachine.new(20, 150)

# 첫 번째 추출 (성공)
puts "\n--- 첫 번째 주문 ---"
my_machine.brew

# 두 번째 추출 (실패 - 물 부족)
# 원두는 10g 남았지만, 물은 50ml 남아서 부족함
puts "\n--- 두 번째 주문 ---"
my_machine.brew

# 재료 충전
puts "\n--- 재료 충전 ---"
my_machine.refill(10, 200)

# 다시 추출 (성공)
puts "\n--- 충전 후 주문 ---"
my_machine.brew
