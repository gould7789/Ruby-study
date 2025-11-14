# frozen_string_literal: true

# Steveは 回答が 0 と 1 によって構成される、2 択テストの採点システムを作っています。
# 回答者の回答が bit1、模範回答が bits2 で与えられるので、
# 回答者が何問間違えたかを算出する、hammingDistance という関数を作成してください。

def hamming_distance(bits1, bits2)
  # bits1의 길이를 구함
  len = bits1.length

  # 문자를 비교하여 다른 지점을 저장할 변수
  distance = 0

  # 문자열을 순회하며 비교
  len.times do |idx|
    # 현재 인덱스가 같은지 비교
    if bits1[idx] != bits2[idx]
      distance += 1
    end
  end

  distance
end

puts hamming_distance('1111111', '1111101')
puts hamming_distance('1001', '1001')
puts hamming_distance('1001', '1110')
puts hamming_distance('10001', '001100')
