# frozen_string_literal: true

# 예외 처리 연습

class AuthSystem
  # 비밀번호는 수정 가능하도록 쓰기 가능
  attr_writer :password

  # 비밀번호 생성 메서드
  def create_pass(password)
    @password = password
  end

  # 로그인 메서드 (비밀번호 확인 예외 처리)
  def login(input)
    # 비밀 번호가 틀렸을 때 오류 메시지 출력 및 예외 처리로 이동
    raise '비밀번호 오류!' unless input == @password

    puts '로그인 성공!'
  end
end

# 테스트

as = AuthSystem.new

# 비밀번호 생성
as.create_pass(1234)

# 로그인
begin
  as.login(1234)
rescue RuntimeError
  puts '경고: 비밀번호가 틀렸습니다.'
ensure
  puts '로그인 시스템을 종료합니다.'
end
