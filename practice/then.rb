# frozen_string_literal: true

# 웹 개발을 할 때 사용자가 입력한 데이터가 지저분 할 경우, 이것을 다음어 해시로 저장
# 입력값
user_input = '    User_Name  '

# then을 활용한 체이닝메서드
result = user_input
         .strip
         .upcase
         .then do |clean_str| # clean_str은 앞서 실행된 메서드들의 결과값이 들어감 -> 'USER_NAME'
  # 여기서 문자열을 해시로 변환
  {
    name: clean_str,
    length: clean_str.length,
    create_at: Time.now
  }
end

puts result

puts '==============================='
puts

# 쇼핑몰 할인 계산기
# 가격 계산처럼 조건에 따라 결과가 달라지는 로직을 중간에 끼워 넣을 때 유용함
# 가격을 입력받아 10% 할인을 해주고, 만약 가격이 3만원 미만이면 배송비(2500원)를 추가
original_price = 30_000

final_price = original_price
              .then { |price| price * 0.9 } # 10% 할인 적용
              .then do |discount_price| # 배송비 로직 판별
                if discount_price < 30_000
                  puts '배송비가 추가됩니다.'
                  discount_price + 2500
                else
                  puts '무료 배송입니다.'
                  discount_price
                end
              end
              .to_i # 소수점 제거(정수로 변환)

puts "최종 결제 금액: #{final_price}"

puts '==============================='
puts

# 파일 이름 만들기
# 입사 지원서 파일명을 자동으로 만들어주는 로직
# 이름, 부서, 확장자를 합쳐서 파일명 만들기
user_info = { name: 'ToMaDa', dept: 'Dev' }

file_name = user_info
            .then { |info| "#{info[:dept]}_#{info[:name]}" } # "Dev_ToMaDa" 문자열 생성
            .downcase                                        # 소문자로 변환
            .then { |str| "#{str}_resum.pdf" }               # 뒤에 확장자 붙이기

puts "생성된 파일명: #{file_name}"

puts '==============================='
puts

# 연습
number = 7

total_num = (number + 10)
            .then do |num|
              if num.odd?
                "#{num}은 홀수입니다."
              else
                "#{num}은 짝수입니다."
              end
            end

puts total_num
