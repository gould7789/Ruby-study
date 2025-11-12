# frozen_string_literal: true

# 文字列と 2 つのインデックス i と j が与えられるので、
# その範囲内の部分だけを反転させた文字列を返す関数 partialReverse を作成してください。

def partial_reverse(s, i, j)
  # 문자열 복사
  work_str = s.dup

  # 인덱스 구간 지정
  start_idx = [i, j].min
  end_idx = [i, j].max

  # 인덱스 구간을 지정해서 문자열을 슬라이싱 후 반전
  re_str = work_str[start_idx..end_idx].reverse

  # 동일한 문자열에 반전된 부분 삽입
  work_str[start_idx..end_idx] = re_str

  # 변경된 문자열 반환
  work_str
end

puts partial_reverse('abcde', 1, 3) # adcbe
puts partial_reverse('abcde', 3, 1) # adcbe
puts partial_reverse('abcde', 1, 1) # abcde
