# frozen_string_literal: true

# BankAccount 클래스를 담고 있음
# 실행은 main.rb에서 실행

class BankAccount
  def initialize
    @balance = 1000
  end

  # 잔액 출금 메서드
  def withdraw(amount)
    if valid_amount?(amount)
      @balance -= amount
      puts "#{amount}원 출금 완료. 잔액: #{@balance}"
    else
      puts '잔액 부족'
    end
  end

  private

  # pirvate 영역은 클래스 외부에서 접근 불가
  def valid_amount?(amount)
    amount > 0 && amount <= @balance
  end
end
