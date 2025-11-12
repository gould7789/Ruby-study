# frozen_string_literal: true

# ある都市の緯度 latitude、経度 longitude が与えられるので、
# 赤道（equator）、本初子午線（prime meridian）を基準として、
# その都市が東西南北どこに位置しているかを文字列で返す、calculateLocation という関数を作成してください。
# 文字列は「緯度/経度」の順で表記してください。

def calculate_location(latitude, longitude)
  # 위도
  lat_direction = ''
  # 경도
  long_direction = ''

  # 위도 기준 작성
  # 위도가 0보다 크면 북쪽
  if latitude > 0.0
    lat_direction = 'north'

  # 위도가 0보다 작으면 남쪽
  elsif latitude < 0.0
    lat_direction = 'south'

  # 위도가 0과 같으면 적도
  else
    lat_direction = 'equator'
  end

  # 경도 기준 작성
  # 경도가 0보다 크면 동쪽
  if longitude > 0.0
    long_direction = 'east'

  # 경도가 0보다 작으면 서쪽
  elsif longitude < 0.0
    long_direction = 'west'

  # 경도가 0과 같으면 본초자오선
  else
    long_direction = 'prime meridian'
  end

  # 최종 출력
  "#{lat_direction}/#{long_direction}"
end

puts calculate_location(77.147489, 0)
puts calculate_location(-55.78774, 0)
