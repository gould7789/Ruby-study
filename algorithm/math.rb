# frozen_string_literal: true

# x-y グラフにおいて、点 A（x,y）が与えられるので、
# 原点から点 A までの距離を返す、distanceToOrigin という関数を定義してください。（x, y はともに整数）

def distance_to_origin(x, y)
  # 거리를 구하기 위해 피타고라스 정의 사용
  triangle = (x**2) + (y**2)

  # 루트를 씌어 나머지 변의 길이를 구함
  result = Math.sqrt(triangle)

  # 반환
  result
end

puts distance_to_origin(3, 4)
