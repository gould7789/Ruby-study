# frozen_string_literal: true

# keyword argument
# 인수에 :을 붙임으로서 인수의 키워드를 명시적으로 지정하겠다고 선언
def print_info(name: 'ゲスト', age:)
  puts "#{name}さんは#{age}歳です"
end

# 인수의 순서가 바뀌어도 키워드에 맞게 입력하면 상관없음
print_info(age: 25, name: '山田')
print_info(age: 25)

# ==========================

# 가변 인수(variable argumente)
# 인수가 몇개 들어올지 모를 때 사용. 가변 인수에 입력 받은 값들은 배열의 형태로 변환
def sum(*numbers)
  puts numbers.class
  numbers.sum
end

puts sum(1, 2, 3)

def greet(message, *names)
  names.each do |name|
    puts "#{name}さん、#{message}"
  end
end

greet('こんにちは', '山田', '田中', '鈴木')

# 키워드 가변 인자
# 입력 받은 값들을 해시 형태로 변환
def order_burger(menu, **option)
  puts "주문하신 메뉴: #{menu}"

  option.each do |key, val|
    puts " - 옵션 추가: #{key}는 #{val}입니다."
  end

  puts '---------------------------'
end

# 옵션이 없는 경우
order_burger('치즈버거')

# 옵션이 있는 경우
order_burger('빅맥', drink: '콜라', patty: '더블', pickle: false)
