# frozen_string_literal: true

# sort: 배열을 순서대로 정렬
numbers = [3, 1, 4, 5, 2]
p numbers.sort # sort를 사용하면 배열의 내용이 순서대로 정렬
p numbers # 하지만 사용한 당시에만 정렬될 뿐, 원래 배열은 그대로 유지됨

# sort!을 사용하면 원래 배열을 변환하여 재정렬함
# !가 붙은 메서드를  破壊的なメソッド라고도 함
p numbers.sort!
p numbers

# revers: 배열의 내용을 반대로 뒤집음
p numbers.reverse
p numbers.reverse! # reverse도 ! 사용 가능

# 그렇다면 sort의 반대로 내림차순으로 정렬은?
# 따로 메서드가 없기 때문에 sort 후 reverse로 뒤집거나, 우주선 연산자( <=> )를 사용
numbers2 = [1, 5, 3]

# 우주선 연산자 (Spaceship Operator)
# a <=> b 는 작은 순서 (오름차순)
# b <=> a 는 큰 순선 (내림차순)
desc_number = numbers2.sort { |a, b| b <=> a }
p desc_number # [5, 3, 1]

# sort_by: 자신이 원하는 조건으로 정렬 가능
scores = [
  { name: '田中', score: 80 },
  { name: '佐藤', score: 70 },
  { name: '鈴木', score: 50 }
]

# score를 기준으로 sort
p(scores.sort_by { |student| student[:score] })
