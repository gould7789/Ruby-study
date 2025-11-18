# frozen_string_literal: true

# 数値で構成される配列 arr が与えられるので、
# 重複要素を削除した配列を返す関数 removeDuplicates を作成してください。

# 리스트 안에서 중복된 요소를 제거해주는 함수
def remove_licates(arr)
  # uniq 메서드를 통해 배열 안에서 중복 요소를 제거한 새로운 배열을 반환
  arr.uniq
end

p remove_licates([1, 4, 2, 4, 3, 2, 5])
p remove_licates([])
