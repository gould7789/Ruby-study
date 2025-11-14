# frozen_string_literal: true

# a と b が与えられるので、a から b までの範囲に含まれる数の中で、
# 偶数のみの合計を計算する sumEvenNumbers という関数を書いてください。

# 범위에서 짝수의 값만 더하는 함수
def sum_even_numbers(a, b)
  # 결과를 저장할 변수
  result = 0

  # 시작 수
  first_num = [a, b].min
  # 끝 수
  finish_num = [a, b].max

  # 시작 수가 홀수인지 확인
  first_num += 1 if first_num.odd?

  # 2씩 증가하는 순회
  (first_num..finish_num).step(2).each do |num|
    result += num
  end

  result

  # 범위에서 짝수만 골라내서 (select), 모두 더함(sum)
  (first_num..finish_num).select(&:even?).sum
end

puts sum_even_numbers(2, 4)
puts sum_even_numbers(4, 2)
puts sum_even_numbers(1, 10)
puts sum_even_numbers(2, 10)
puts sum_even_numbers(3, 10)
