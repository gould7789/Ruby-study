# frozen_string_literal: true

# 例外処理
def divide(a, b)
  a / b
rescue ZeroDivisionError # 구체적인 에러명을 입력해주는 것이 좋음ㄴ
  puts '0で割ることはできません'
end

divide(10, 0)

# raise
def greet(name)
  # 오류를 rescue로 던짐. 오류메시지 설정 가능
  raise '名前を入力してください' if name.empty?

  puts "こんにちは、#{name}さん"
rescue StandardError => e
  puts e
end

greet('')
