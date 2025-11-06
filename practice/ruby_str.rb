# 루비의 문자열

# 루비의 문자열 인덱스 구하기
my_string = "안녕하세요"
str_idx = my_string[1]

# 결과 출력
puts "문자열: #{my_string}"
puts "인덱스 1의 문자 #{my_string[1]}"
puts "익덱스 마지막 문자 #{my_string[-1]}" 

# 문자열 길이 구하기
my_string2 = "어서오세요"
str_len = my_string2.length
str_size = my_string2.size

# 결과 출력
puts "문자열 길이 출력 #{str_len}"
puts "문자열 길이 출력 #{str_size}"


# 범위를 사용하여 여러 문자 가져오기
my_string3 = "안녕하세요"

# 1) 인덱스 1부터 3까지의 문자 가져오기(종료 인덱스 포함)
# "녕" "하" "세"
substring_1 = my_string3[1..3]

# 2) 시작 인덱스와 길이(개수)를 사용하여 가져오기
# 인덱스 2부터 2개의 문자 ("하", "세")
substring_2 = my_string3[2, 2]

# 결과 출력
puts "\n--- 부분 문자열 구하기 ---"
puts "my_string3[1..3] #{substring_1}"  # 녕하세
puts "my_string3[2, 2] #{substring_2}"  # 하세