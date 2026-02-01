# frozen_string_literal: true

# ?로 끝나는 메서드는 true/false를 반환함

# [1] include?: 해당 요소를 포함하고 있다면 true 반환
numbers = [1, 2, 3]
puts numbers.include?(3) # true
puts numbers.include?(4) # false

# 문자열에서도 사용 가능
fruit = 'りんご'
puts fruit.include?('りん') # true

# 해시의 경우 key를 기준으로 판단
name = { name: 'とまだ' }
puts name.include?(:name) # true

# value값을 찾고 싶다면 해시에서 .values.include?() 사용하면 가능
puts name.values.include?('とまだ') # true

# [2] empty?: 객체가 비었을 때 true 반환
puts [1, 2].empty? # false

# 문자열 및 해시에서도 사용 가능
puts ''.empty? # true
puts({}.empty?) # ture

# [3] nil?: 해당 요소가 nil일 경우 true 반환
name2 = 'とまだ'
puts name2.nil? # false
