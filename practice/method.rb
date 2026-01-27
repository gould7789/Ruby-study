# frozen_string_literal: true

# 戻り値
def calculate_sum
  2 + 3
end

result = calculate_sum
puts result

# returnを使う場合
# 특정 구간에서 코드를 멈추고 싶다면 return을 사용하여 메서드 정지
def greet
  return 'こんにちは'
  puts 'returnの後の行が実行されました'
end

puts greet

# 引数
def greet_with_name(name)
  puts "こんにちは、#{name}"
end

greet_with_name('山田')

def double(number)
  number * 2
end

puts double(5)

# default argument
def default_greet(name = 'ゲスト', message = 'ようこそ')
  puts "こんにちは、#{name}さん"
  puts message
end

default_greet
