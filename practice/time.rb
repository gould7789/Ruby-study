# frozen_string_literal: true

# Time.now: 현재 시간을 적음
puts Time.now

# 변수에 현재 시간을 저장할 수도 있음
current_time = Time.now
puts current_time
puts current_time.year  # 몇년인지
puts current_time.month # 몇월인지
puts current_time.day   # 며칠인지
puts current_time.hour  # 몇시인지
puts current_time.min   # 몇분인지
puts current_time.monday? # 월요일인지 확인 후 true/false 반환

# 컴퓨터가 코드를 읽는 순간의 시간이기 때문에 sleep으로 조절 가능
sleep 2
puts Time.now

# 사용자가 읽기 편하게 strftime으로 설정 가능
puts current_time.strftime('%Y年%m月%d日 %H時%M分')

# Time.new: 특정 날짜 지정 가능
time = Time.new(2026, 1, 1, 10, 20, 30)
puts time

# 현재 시간과 비교하여 과거의 것인지도 파악 가능
puts time < Time.now
