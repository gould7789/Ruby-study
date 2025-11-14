# 루비 반복문

# ----- while -----
# 1) 초기 변수 설정
counter = 1

# 2) while 반복문 시작: counter가 5보다 작거나 같은 동안 반복
while counter <= 5
  puts "while 반복문 실행 중: 현재 값은 #{counter}입니다."

  # 3) 반복을 끝내기 위한 변수 수정
  counter += 1
end

# ----- 이러테이터: each 메서드 -----
# 1) 순회할 배열을 정의
languages = ["Ruby", "Python", "JavaScript", "Elixir"]

# 2) each 이터레이터를 사용하여 배열을 순회
# |language|는 배열의 각 요소를 임시로 저장하는 '블록 변수'
languages.each do |language|
  puts "#{language}는 웹 개발에 유용합니다."
end

# 3) range 객체 사용해서 순회
(1..10).step(2).each do |num|
  puts num
end

# ----- times 메서드 -----
# 특정 횟수만큼 반복해야 할 때 유용함
# 5번 반복
5.times do |i|
  # i는 0부터 시작하는 현재 반복 횟수(인덱스)입니다.
  puts "반복횟수: #{i + 1}번째"
end

# ----- 순차 범위 반복 -----
# .upto, .downto
1.upto(10) do |num|
  puts num
end

# ----- 문자열 순회 -----
# 1) 순회할 문자열 정의
rb_string = 'Ruby!'

# 2) 순회
rb_string.each_char do |word|
  puts "문자: #{word}"
end
