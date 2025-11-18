# frozen_string_literal: true

# 数値で構成される配列 arr が与えられるので、
# 隣接する要素間の差の最大値を求める関数 findMaxDifference を作成してください。

# 인접 요소의 차이의 최대값을 찾는 함수
def max_difference(arr)
  # 차이값을 저장할 변수
  diffrence = 0
  # 최댓값
  max_num = 0

  # 리스트를 순회하며 each_con을 사용해서 인접한 요소들끼리 비교
  arr.each_cons(2) do |num1, num2|
    diffrence = (num1 - num2).abs

    # 차이값이 최대값보다 크다면 업데이트
    if diffrence > max_num
      max_num = diffrence
    end
  end

  max_num
end

puts max_difference([4, 8, 1, 10])
puts max_difference([5, 5, 5, 5])
puts max_difference([6])
puts max_difference([-3, -7, 5, 10])
puts max_difference([])
