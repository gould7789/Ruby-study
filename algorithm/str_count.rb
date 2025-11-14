# frozen_string_literal: true

# アルファベットの文字列 s が与えられるので、
# 文字列に含まれる小文字の数を計算する関数 countLowerCase を作成してください。

def count_lower_case(s)
  # count: 문자열에 해당 대상을 카운팅
  # 'a-z' a~z까지 패턴
  s.count('a-z')
end

puts count_lower_case('Hello')
puts count_lower_case('ABCD')
puts count_lower_case('abcd')
