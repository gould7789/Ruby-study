# frozen_string_literal: true

# Frige は明日学校があるのかわかっていません。
# 祝日または土日の場合、基本的に学校はありません。
# 明日の曜日 day とその日が祝日かどうかをあらわす
# ブール値 isHoliday（祝日なら true、そうでないなら false）が与えられるので、
# 学校があるか判定する isThereSchool という関数を作成してください。

def is_there_school?(day, is_holiday)
  # 학교를 가는 날인지 아닌지 판단하는 조건문 작성

  # 일반적인 if 조건문 사용
  # if day == 'Saturday' || day == 'Sunday' || is_holiday == true
  #   false
  # else
  #   true
  # end

  # 단순하게 참/거짓을 반환하는 논리에는 조건 자체를 부정(!)하는 것으로 사용 가능
  !(day == 'Saturday' || day == 'Sunday' || is_holiday)
end

puts is_there_school?('Sunday', true)
puts is_there_school?('Monday', false)
puts is_there_school?('Custom String Input', false)
