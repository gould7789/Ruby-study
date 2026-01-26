# frozen_string_literal: true

score = 'B'

# case를 활용한 조건문
case score
when 'A' then puts '大変よくできました' # then을 활용하여 한 줄로도 가능
when 'B'
  puts 'よくできました'
when 'C'
  puts 'がんばりましょう'
else
  puts '評価がありません'
end

# when 조건을 여러가지로 설정 가능
month = 7

case month
when 3, 4, 5
  puts '春です'
when 6, 7, 8
  puts '夏です'
when 9, 10, 11
  puts '秋です'
when 12, 1, 2
  puts '冬です'
else
  puts '正しい月を入力してください'
end

# when의 조건을 범위로 설정 가능
score2 = 85

case score2
when 90..100
  puts 'S評価です'
when 80..89
  puts 'A評価です'
when 70..79
  puts 'B評価です'
when 60..69
  puts 'C評価です'
else
  puts 'D評価です'
end
