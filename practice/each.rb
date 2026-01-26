# frozen_string_literal: true

# 배열의 순회
number = [1, 2, 3]

number.each do |num|
  puts num
end

# 문자열 배열의 순회
items = ['コーヒー', '紅茶', '緑茶']

items.each do |item|
  puts "#{item}が注文されました"
end

prices = [100, 200, 300]
total = 0

prices.each do |price|
  total += price
end

puts "合計金額は#{total}円です"

# 순회 한 줄 처리법
number2 = [1, 2, 3]

number2.each { |number| puts number }

# 인덱스와 함께 출력
fruits = ['リンゴ', 'バナナ', 'みかん']

# ()안의 숫자부터 인덱스가 시작할 수 있도록 설정 가능
fruits.each.with_index(1) do |fruit, idx|
  puts "果物: #{fruit}, index: #{idx}"
end
