# frozen_string_literal: true

# 与えられたユーザー名に基づいて、そのイニシャルをアプリ内で表示させるように実装指示が出ました。
# 以下に従って、Person クラスを作成し、テストケースを出力してください。

# 유저명을 입력 받고 풀네임과 이니셜을 작성하는 클래스
class Person
  # 접근 제한자
  attr_reader :first_name, :last_name

  # 생성자
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # 풀네임을 작성하는 메서드
  def full_name
    "#{first_name} #{last_name}"
  end

  # 이니셜을 작성하는 메서드
  def initial
    "#{first_name[0]}.#{last_name[0]}"
  end
end

# 객체 생성
mike = Person.new('Michael', 'Johnson')
puts mike.full_name
puts mike.initial

calry = Person.new('Carly', 'Angelo')
puts calry.full_name
puts calry.initial

jessie = Person.new('Jessie', 'Raelynn')
puts jessie.full_name
puts jessie.initial
