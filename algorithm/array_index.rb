# frozen_string_literal: true

# 数値で構成される配列 arr と、数値 n が与えられるので、
# 与えられた値と同じ値を持つ配列の要素のインデックスを返す関数 findElementIndex を作成してください。
# その値が配列に存在しない場合は、-1 を返してください。

# 배열에서 특정 요소의 인덱스를 반환
def find_index(arr, n)
  # 배열에 n이 없는 경우 -1 반환
  return -1 unless arr.include?(n)

  # 배열에 n이 있는 경우
  arr.length.times do |idx|
    return idx if arr[idx] == n
  end

  # index 메서드 활용
  # arr.index(n)이 nil을 반환하면, -1을 반환
  arr.index(n) || -1 # n의 인덱스 또는 nil(여기서는 -1) 반환
end

puts find_index([1, 2, 3, 4], 3)
puts find_index([1, 1, 1, 1], 1)
puts find_index([], 1)
