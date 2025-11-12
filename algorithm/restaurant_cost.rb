# Jorge は高級レストランで家族と食事をしています。
# クレジットカード会社 creditCardType と食事代（税抜き）cost が与えられるので、
# 以下の条件に沿った、processPayment という関数を作成してください。

# - このレストランでは Visa か MasterCard 以外は対応しておらず、-1.0 を返します。
# - 消費税は一律 10% です。
# - ウェイターへのチップは食事代（税抜き）が 3 で割り切れるとき 3%、5 で割り切れるとき 5%、7 で割り切れ るとき 7%、それ以外の場合は一律で 10% を請求します。
# - 合計金額が 300 ドルを超えると、クレジットカードが残高不足になり、-1.0 を返します。

def process_payment(credit_card, cost)
  # 조건 1) 이 식당은 Visa와 MasterCard만 받는다. 그 외에는 -1 반환
  # 조건 2) 소비세는 10%
  # 조건 3) 웨이터에게 팁은 총금액이 3, 5, 7로 나눠지면 그 %로 계산, 그 외에는 전부 10% 청구
  # 조건 4) 총 금액이 300을 넘으면 잔액부족으로 -1 반환

  # 카드 확인
  unless credit_card == 'Visa' || credit_card == 'MasterCard'
    return -1.0
  end

  # 팁 비율 결정
  normal_tip = 0.10

  if cost % 3 == 0    # 3%
    normal_tip = 0.03
  elsif cost % 5 == 0
    normal_tip = 0.05 # 5%
  elsif cost % 7 == 0
    normal_tip = 0.07 # 7%
  end

  # 팁, 소비세 가격
  total_tip = cost * normal_tip
  total_tax = cost * 0.10

  # 총 금액
  result = cost + total_tax + total_tip

  # 총 금액이 300이 넘는지 확인
  return -1.0 if 300 < result

  result.round(2)
end

puts process_payment('MasterCard', 150)       # 169.5
puts process_payment('American Express', 93)  # -1
puts process_payment('Visa', 210)             # 237.3
puts process_payment('Visa', 259)             # -1
puts process_payment('American Express', 928) # -1
