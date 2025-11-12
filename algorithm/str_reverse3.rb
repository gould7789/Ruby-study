# frozen_string_literal: true

# 文字列 s と数値 position が入力として与えられるので、
# s の position 位置から始まる部分文字列を取得し、
# その部分文字列を逆順にする関数 reverseSubstringFromPosition を作成してください。
# position が s のインデックスの範囲外であれば、s をそのまま返してください。

def reverse_substring_from_position(s, position)
  # position의 값이 s의 길이보다 이하일 경우 문자 슬라이싱 및 반전
  if position < s.length

    # position부터 문자열 끝까지 슬라이싱
    slice_str = s.slice(position..)

    # 슬라이싱한 문자열을 반전
    result = slice_str.reverse

    # 결과 반환
    return result
  end

  # position의 값이 s의 길이보다 클 경우 s 그대로 출력
  s
end

puts reverse_substring_from_position('HelloWorld', 5)
puts reverse_substring_from_position('ab', 2)
