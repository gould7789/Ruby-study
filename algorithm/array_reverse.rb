# frozen_string_literal: true

# 文字列で構成される配列 arr が与えられるので、
# 配列の要素の順序を逆にする関数 reverseArray を作成してください。

# 배열안의 요소를 반전 시키는 함수
def reverse_array(arr)
  # 반환할 새로운 리스트
  result = []

  arr.length.times do |idx|
    result.unshift(arr[idx])
  end

  result

  # 반전 메서드
  arr.reverse
end

p reverse_array(['a', 'b', 'c', 'd'])
p reverse_array(%w[Hello World])
