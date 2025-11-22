# frozen_string_literal: true

# 動物の年齢に基づいて医療保険の加入資格を判断する関数 qualifiedForInsurance を作成してください。
# この関数は、動物の年齢を人間の年齢に換算し、その結果が 60 歳以下であれば true を、
# 60 歳より上であれば false を返す必要があります。
# 動物の年齢を人間の年齢に換算するためのラムダ関数は、以下の 2 つです。

# int dogToHuman(int dogAge)
# 犬の年齢を人間の年齢（int 型）に換算するラムダ関数。換算式は 20 + (犬の年齢 - 2) * 7 です。

# int catToHuman(int catAge)
# 猫の年齢を人間の年齢（int 型）に換算するラムダ関数。換算式は 24 + (猫の年齢 - 2) * 4 です。

# 강아지 나이 계산법
dog_to_human = ->(age) { 20 + (age - 2) * 7 }

cat_to_human = ->(age) { 24 + (age - 2) * 4 }

# 동물의 나이를 계산하여 보험 가입이 가능한지 확인하는 함수
def qualified_for_insurance(age_calculator, animal_age)
  result = age_calculator.call(animal_age)

  result <= 60
end

puts qualified_for_insurance(dog_to_human, 7)
puts qualified_for_insurance(dog_to_human, 8)
puts qualified_for_insurance(cat_to_human, 11)
puts qualified_for_insurance(cat_to_human, 12)
