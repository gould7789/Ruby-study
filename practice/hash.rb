# frozen_string_literal: true

# 해시의 기본
# key값을 심볼로 지정하는 이유? 심볼은 한 번 만들어지면 같은 메모리 주소를 계속 재사용하기 때문
# 즉, 메모리의 효율성 때문
# 또한 심볼은 변하지 않는 값이므로 컴퓨터가 데이터를 찾을 때 문자열보다 빠르게 찾을 수 있음
person = {
  name: '太郎',
  age: 20
}

puts person[:name]
puts person[:age]

# 해시 요소 업데이트
person[:age] = 30
person[:hobby] = '野球'

# 해시 요소 삭제
person.delete(:hobby)

puts person

# 키를 호출
keys = person.keys
puts keys

# 밸류를 호출
values = person.values
puts values
