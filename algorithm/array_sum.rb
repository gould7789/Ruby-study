# frozen_string_literal: true

# League は小学生向けに算数のゲームを作りました。
# ゲームではランダムに数字が入っている箱を選び、全ての数字を取り出します。
# そして、取り出した数字から奇数番目のものを全て足し合わせ、合計値を求めていきます。
# 数字が入った箱 intArr が与えられるので、
# 全ての奇数番目を足した値を返す addEveryOtherElement という関数を定義してください。

# 배열에서 홀수 번째 인덱스의 요소만 더하는 함수 작성
def add_odd(arr)
  # 최종 결과를 위한 결과 변수
  result = 0

  # 인덱스용 배열 길이
  arr_len = arr.length

  # 반복문을 사용하여 홀수 번째 인덱스만 더함
  arr_len.times do |idx|
    # 홀수일 때만 더함
    if (idx + 1) % 2 != 0
      result += arr[idx]
    end
  end

  result
end

puts add_odd([34, 46, 45, 57])
puts add_odd([60, 45, 66, 75, 56, 32, 654, 45, 100])
puts add_odd([5, 10])
puts add_odd([])
