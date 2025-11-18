# frozen_string_literal: true

# 文字の配列 arr が与えられたとき、
# 配列内で同じ文字が隣接するペアが何組あるかをカウントする
# 関数 countAdjacentPairs を作成してください。

# 인접하게 동일한 문자가 연속된 쌍이 몇 개있는지 계산하는 함수
def count_paris(arr)
  # 쌍의 개수를 저장할 변수
  count = 0

  # each_cons 메서드를 사용하여 배열을 연속된 두 요소로 순회
  arr.each_cons(2) do |char1, char2|
    # 현재 요소와 다음 요소가 같은지 비교
    if char1 == char2
      count += 1
    end
  end

  # 최종 출력
  count
end

puts count_paris(['a','a','b','b'])
puts count_paris(['a','b','b','c','a','a','d'])
puts count_paris(['a','a','a','a'])
puts count_paris(['a'])
puts count_paris([])
