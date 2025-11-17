# frozen_string_literal: true

# 1. 빈 배열 생성 (흔한 방법)
my_empty_array = []
puts "빈 배열 #{my_empty_array}"

# 2. 초기값을 가진 배열 생성 (여러 종류의 객체 포함 기능)
mixed_array = ["Ruby", 3, true, 4.5, "Rails"]
puts "혼합된 배열: #{mixed_array}"

# 3. Array.new를 사용하여 특정 크기의 빈 배열 생성
# (특정 크기가 필요할 때 사용)
ten_zeros = Array.new(10, 0)  # 10개의 0으로 채워진 배열
puts "10개의 0 배열: #{ten_zeros}"

# -------------------------------------------------------

# 요소 접근
learning_goals = ["배열", "문자열", "해시", "메소드"]

# 1. 인덱스를 사용한 접근 (0부터 시작)
first_item = learning_goals[0]
third_item = learning_goals[2]

puts "첫 번째 목표 (인덱스 0): #{first_item}"
puts "세 번째 목표 (인덱스 2): #{third_item}"

# 2. 음수 인덱스를 사용한 접근(뒤에서부터 세기)
last_item = learning_goals[-1]      # 배열의 마지막 요소
second_to_last = learning_goals[-2] # 배열의 끝에서 두 번째 요소

puts "마지막 목표 (인덱스 -1): #{last_item}"
puts "끝에서 두 번째 목표 (인덱스 -2): #{second_to_last}"

# 3. 편리한 메소드를 사용한 접근
puts "첫 번째 요소: #{learning_goals.first}"
puts "마지막 요소: #{learning_goals.last}"

# -------------------------------------------------------

# 요소 추가
frontend_skills = ['HTML', 'CSS', 'JavaScript']

# 1. 맨 뒤에 추가: push 또는 << (shovel operator) 사용
frontend_skills.push('React')
puts "Push 후: #{frontend_skills}"

frontend_skills << 'Vue'
puts "Shovel operator(<<) 후: #{frontend_skills}"

# 2. 맨 앞에 추가: unshift 사용
frontend_skills.unshift('Design Principles')
puts "Unshitf 후: #{frontend_skills}"

# 요소 제거
backend_skills = ['Ruby', 'Rails', 'PostgreSQL', 'Git']

# 1. 맨 뒤 요소 제거 (pop)
remove_last = backend_skills.pop
puts "Pop으로 제거된 요소: #{remove_last}"  # Pop으로 제거된 요소: Git
puts "Pop 후 배열: #{backend_skills}"      # Pop 후 배열

# 2. 맨 앞 요소 제거 (shift)
remove_first = backend_skills.shift
puts "Shift로 제거된 요소: #{remove_first}"
puts "Shift 후 배열: #{backend_skills}"

# -------------------------------------------------------

# 특정 위치에 추가하기
languages = ['Ruby', 'Python', 'Java']

# 인덱스 1 (Python 앞)에 'JavaScript'를 추가
languages.insert(1, 'JavaScript')
puts "1번 인덱스에 추가: #{languages}"

# 인덱스 3 (Java 앞)에 두 개의 요소 "Go", "C++"를 한 번에 추가
languages.insert(3, 'Go', 'C++')
puts "3번 인덱스에 여러 개 추가: #{languages}"

# 특정 인덱스의 요소 제거: delere_at
todo_list = ['장보기', '코드 리뷰', '운동하기', '루비 공부']

# 인덱스 2 (세 번째 요소인 '운동하기') 제거
removed_item = todo_list.delete_at(2)
puts "제거된 항목: #{removed_item}" # 제거된 항목: 운동하기 출력
puts "delete_at 후: #{todo_list}" # 제거된 후 리스트 출력

# 특정 요소를 찾아서 제거: delete
team_members = ['Alice', 'Bob', 'Alice', 'Caarlie', 'Alice']

# 값이 'Alice'인 모든 요소 제거
remove_member = team_members.delete('Alice')
puts "제거된 항목: #{remove_member}"
puts "deldte 후: #{team_members}"
