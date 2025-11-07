# frozen_string_literal: true

def can_process_order(beef, chicken, salad, coffee, tea)
  # bool != bool -> 두 bool 값이 서로 다를 때 true를 반환하는 연산자
  # 1. 메인 요리 조건: beef 또는 chicken 중 하나라도 ture여야함
  main_dish = beef != chicken

  # 2. 음료 조건: coffee 또는 tea 중 하나라도 true여야함
  drink = coffee != tea

  # 3. 최종 조건: 메인 요리와 음료 조건이 모두 충족되어야 주문이 가능
  main_dish && drink
end

puts can_process_order(false, false, true, true, false) # 예상: false (메인 요리 없음)
puts can_process_order(true, false, true, true, false)  # 예상: true (소고기 O, 커피 O)
puts can_process_order(true, false, true, false, true)  # 예상: true (소고기 O, 차 O)
puts can_process_order(true, true, false, false, false) # 예상: false (음료 없음)
puts can_process_order(true, false, false, false, true) # 예상: true (소고기 O, 차 O)
puts can_process_order(false, false, false, false, false) # 예상: false (모두 없음)
