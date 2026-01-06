# frozen_string_literal: true

# 도서관 시스템
class Book
  # 제목과 저자는 한 번 정해지면 바뀌지 않음
  attr_reader :title, :author

  # 도서관에 등록된 총 책의 수
  @@count = 0

  # 객체(책)가 생성될 때마다 카운트 1 증가
  def initialize(title, author)
    @title = title
    @author = author

    @@count += 1
  end

  def self.total_count
    puts "현재 등록된 책은 총 #{@@count}권입니다."
  end
end

# 객체(책) 생성
book1 = Book.new('나는 누구인가', '정우영')
book2 = Book.new('너는 누구인가', '이근욱')
book3 = Book.new('그는 누구인가', '이승혁')

# 특정 책이 아닌 클래스에게 직접 물어봄
puts '--- 도서관 현황 ---'
Book.total_count
