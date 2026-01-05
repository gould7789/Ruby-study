# frozen_string_literal: true

def divide(a, b)
  # 감시 시작(begin) - begin이 전체 코드를 감싸게 되면 생략 가능
  result = a / b
  puts "#{a} 나누기 #{b}의 결과는 #{result}입니다."

# 에러가 발생 했을 때 구조대 출동(rescue)
rescue ZeroDivisionError
  puts '에러 발생! 0으로 나눌 수 없습니다.'

# 마무리(ensure) - 에러가 나든 안 나든 무조건 실행(생략 가능)
ensure
  puts "--- 계산 시도 종료 ---\n"
end

puts '정상적인 계산'
divide(10, 2)

puts '에러가 있는 계산 (0으로 나누기)'
# rescue가 없었다면 여기서 프로그램이 멈춤
divide(10, 0)

# 연습
class Shop
  # 상수는 대문자로 쓰는 게 관례(바뀌지 않는 가격)
  ITEM_PRICE = 1000

  def buy_item(money)
    puts "손님이 #{money}원을 냈습니다."

    # 검사 및 에러 발생(raise)
    # 돈이 부족하면 강제로 에러를 일으킴
    # 이 줄이 실행되면 즉시 아래의 rescue로 이동
    raise '잔액 부족!' if money < ITEM_PRICE

    # 위에서 에러가 나지 않았다면(돈이 충분하다면) 이 코드가 실행됨
    puts "구매해주셔서 감사합니다! \n[현재 잔액]: #{money - ITEM_PRICE}"

  # 에러 잡기(rescue)
  # 위에서 raise가 발동되면 여기로 넘어옴
  rescue RuntimeError
    puts '결제 실패! 돈이 부족합니다. 돈을 더 가져오세요.'

  # 뒷정리(ensure)
  ensure
    puts "--- 계산 시스템 종료 ---\n"
  end
end

# 테스트
shop = Shop.new

puts "\n[상황 1] 돈이 충분할 때 (2000원)"
shop.buy_item(2000)

puts "\n[상황 2] 돈이 부족할 때 (500원)"
shop.buy_item(500)
