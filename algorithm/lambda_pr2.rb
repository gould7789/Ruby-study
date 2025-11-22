# frozen_string_literal: true

# 整数 n が与えられたとき、以下の条件に基づいて出力を生成するラムダ関数 fizzbuzz を作成してください。

# n が 3 の倍数であれば "Fizz" を生成
# n が 5 の倍数であれば "Buzz" を生成
# n が 15 の倍数であれば "FizzBuzz" を生成

# 上記のどの条件にも当てはまらない場合は、数値 n 自体を生成
# 作成した関数を用いて、提供されたテストケースで関数の出力を表示してください。
# なお、出力は 1 から n までの各数値に対して上記のルールに基づき生成し、
# 各値はハイフン - で区切って連結してください。

# 여러 줄의 함수를 작성해야 할 때는 '->' 대신 'lambda' 사용
fizzbuzz = lambda do |n|
  result = (1..n).map do |num|
    # 15의 배수
    if num % 15 == 0
      'FizzBuzz'
    elsif num % 5 == 0
      'Buzz'
    elsif num % 3 == 0
      'Fizz'
    else
      num
    end
  end

  result.join('-')
end

puts fizzbuzz.call(9)
puts fizzbuzz.call(20)
