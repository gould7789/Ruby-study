# frozen_string_literal: true

# 문자열 변형 메서드

# [1] strip: 앞뒤 공백 제거
text = '  Hello World '
puts text
puts text.strip
puts text.lstrip # 앞의 공백만 제거
puts text.rstrip # 뒤의 공백만 제거

# [2] gsub: 특정 요소를 제거하고 원하는 요소로 대체
phone = '090-1234-5678'
puts phone.gsub('-', '') # 09012345678
puts phone.gsub('-', '@') # 09012345678

# [3] split: 문자열을 분배해서 배열로 반환
fruits = 'りんご, バナナ, オレンジ'
p fruits.split(', ') # ["りんご", "バナナ", "オレンジ"]

date = '2024/12/31'
p date.split('/') # ["2024", "12", "31"]

# split에 아무 조건을 걸지 않을 경우 공백을 기준으로 함
p 'Hello World'.split # ["Hello", "World"]
