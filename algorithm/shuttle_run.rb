# frozen_string_literal: true

# E 高校の野球部は定期的に 20 メートルシャトルランを行なっており、
# 1 日に複数回記録を取っており、1 回でも記録が減少した選手にペナルティを与える部則がありました。
# シャトルランの記録 records が与えられるので、ペナルティが与えられるか判定する、
# hasPenalty という関数を定義してください。
# シャトルランは本来は 247 までしか存在しませんが、今回はいかなる自然数も対象とします。

# 기록을 측정하여 떨어진 구간이 있다면 패널티(true) 부과
def penalty?(records)
  # 기록이 2개 미만일 때 패널티 없음(false)
  return false if records.length < 2

  # 현재 요소와 그 다음요소를 비교
  (1...records.length).each do |idx|
    current_record = records[idx] # 현재 기록
    previous_record = records[idx - 1] # 이전 기록

    # 기록이 떨어진 구간이 생기면 패널티 부과
    return true if previous_record > current_record
  end

  # 기록이 계속 오르고 있다면 패널티 없음
  false
end

puts penalty?([1, 2, 3, 4])
puts penalty?([4, 3, 2, 1])
puts penalty?([80, 80, 80, 80])
puts penalty?([1, 28, 48, 85, 3])
