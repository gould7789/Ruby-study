# frozen_string_literal: true

# x-y 平面上の全ての点は (x,y) と表現することができます。
# 以下に従って、Point クラスを作成し、テストケースを出力してください。

# 좌표를 지정하는 클래스
class Point
  # 접근자 정의
  attr_reader :x, :y

  # 생성자 메서드
  def initialize(x, y)
    @x = x
    @y = y
  end
end

# 객체 생성
num1 = Point.new(3, 1)
num2 = Point.new(3, 6)

# 호출
puts num1.x
puts num1.y
puts num2.x
puts num2.y
