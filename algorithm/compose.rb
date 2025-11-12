# frozen_string_literal: true

# 2 つの数値 num1 と num2 が入力として与えられるので、
# その合計と平均を文字列として出力する関数 calculateSumAndAverage を作成してください。

def calculate_sum_average(num1, num2)
  sum = num1 + num2
  avg = sum / 2.0

  # 정수로 딱 나누어 떨어질 때
  avg = avg.to_i if avg % 1.0 == 0.0

  "Sum: #{sum}, Average: #{avg}"
end

puts calculate_sum_average(2, 4)
puts calculate_sum_average(3, 4)
