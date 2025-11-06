# JR 北日本は過去数年の分析に基づいて、新幹線の搭乗券の売れ行きを計算しています。
# 今、7 日間で $250 の搭乗券を、15 万人が購入することがわかっています。
# 統計を取ると、この価格帯から $10 高くなるたびに 7000 人が購入をやめ、
# $10 安くなるたびに追加で 7000 人が搭乗券を購入することがわかりました。
#（つまり、$260 では、14 万 3 千人が搭乗券を購入し、$270 では 13 万 6 千人が搭乗券を購入することになります。）
# 今、7 日間の搭乗券の価格 ticketPrice が与えられるので、
# 搭乗券の購入人数を返す、weekly7DaysSales という関数を定義してください。

# 함수 작성
def weekly7DaysSales(ticketPrice)
  # $250를 기준으로 +- 기준값 계산
  standard = (250 - ticketPrice) / 10.0
  
  # 150000에서 +- 할 합계
  total = 7000 * standard
  # 결과값
  result = 150000 + total

  return result.to_i
end

puts weekly7DaysSales(260)
puts weekly7DaysSales(255)
puts weekly7DaysSales(220)