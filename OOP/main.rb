# frozen_string_literal: true

# 내가 만든 파일 불러오기
# 같은 폴더에 있는 'bank_account.rb' 파일을 가져옴
require_relative 'bank_account'

# 불러온 클래스 사용
my_account = BankAccount.new

puts '1. 출금 시도'
my_account.withdraw(500)

puts "\n2. 내부 로직 접근 시도 (에러 테스트)"
begin
  my_account.valid_amount?(500)
rescue NoMethodError
  puts 'private 메서드는 외부에서 호출 불가'
end
