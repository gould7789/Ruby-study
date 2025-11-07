# frozen_string_literal: true
# 文字列 s が与えられるので、大文字にして返す toUpperCase という関数を作成してください。

def to_upper_case(s)
  # 루비에서는 대문자로 변환할 때 .upcase() 함수를 사용함
  s.upcase
end

puts to_upper_case('Enrico')
