# frozen_string_literal: true

# 図形をオブジェクトを使って表現してみましょう。
# 以下に従って、Shape クラスを作成し、テストケースを出力してください。
# - String type: 図形の形
# - String color: 図形の色

class Shape
  # 접근자 정의(Getter)
  # :type과 :color 인스턴스 변수에 대한 외부 읽기 접근자(Getter)를 자동으로 생성
  attr_reader :type, :color

  # 생성자 구현(initialize)
  # 새로운 Shape 객체가 생성될 때 (Shape.new) 호출됨
  # 전달받은 type과 color 값을 각각 @type과 @color 인스턴스 변수에 저장하여 초기화
  def initialize(type, color)
    @type = type
    @color = color
  end

  # 객체를 보기 쉽게 출력하기 위한 메서드
  # 이 메서드 값으면 속성값이 태그로 나와서 보기 불편함
  # puts를 실행할 때 자동으로 호출
  def to_s
    "Type: #{@type}, Color: #{@color}"
  end
end

# 객체 생성
circle = Shape.new("circle", "red")
square = Shape.new("square", "blue")

puts circle.type
puts square.color

# 속성 값 확인 (Getter 메서드 호출)
puts "--- 객체 정보 ---"
puts "Circle 객체: #{circle}"
puts "Square 객체: #{square}"

puts "\n--- 테스트 결과  ---"

# 테스트 케이스 1: circle.type --> circle
expected_type = "circle"
actual_type = circle.type
puts "Circle의 type: #{actual_type} (기댓값: #{expected_type})"
puts "성공" if actual_type == expected_type

# 테스트 케이스 2: square.color --> blue
expected_color = "blue"
actual_color = square.color
puts "Square의 color: #{actual_color} (기댓값: #{expected_color}"
puts "성공" if actual_color == expected_color
