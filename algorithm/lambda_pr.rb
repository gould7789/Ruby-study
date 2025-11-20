# frozen_string_literal: true

# 与えられた半径 radius を使用して、円の面積を計算するラムダ関数 circleArea を作成してください。
# このとき、円周率は 3.14 とします。作成した関数を用いて、
# 提供されたテストケースで関数の出力を表示してください。

# 람다는 변수에 저장할 수 있는 함수
circle_area = ->(radius) { (radius**2) * 3.14 }

puts circle_area.call(1) # 가장 정석적인 문법
puts circle_area.(5) # 괄호 문법
