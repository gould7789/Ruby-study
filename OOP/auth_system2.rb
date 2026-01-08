# frozen_string_literal: true

# 로그인 시스템 확장판

class AuthSystem
  # 보안을 위해 초기 비밀번호는 내부에서 설정
  # attr을 쓰지 않음으로써 외부에서의 @password 접근을 차단
  def initialize
    # 사용자가 비밀번호를 설정
    print '초기 비밀번호를 설정해주세요: '
    @password = gets.chomp
    puts '비밀번호가 설정되었습니다.'
  end

  # 로그인 메서드
  def login(input_password)
    # 틀리면 에러 메시지 출력 및 이동
    raise '비밀번호가 틀렸습니다!' unless input_password == @password

    # 성공했을 때는 메시지 출력
    puts '로그인 성공!'
  end

  # 비밀번호 변경 메서드
  def change_password
    print '비밀번호 변경을 위해 기존 비밀번호를 입력해주세요: '
    current_pw = gets.chomp # 사용자가 수정을 위해 입력한 비밀번호

    # 기존 비밀번호와 대조
    # 틀렸을 경우 에러를 던져서 변경을 막음
    raise '기존 비밀번호와 일치하지 않습니다!' unless current_pw == @password

    # 맞으면 새 비밀번호로 덮어쓰기
    print '새 비밀번호를 입력해주세요: '
    new_pw = gets.chomp
    @password = new_pw

    puts '비밀번호가 성공적으로 변경되었습니다.'
  end

  # 비밀번호 조회
  # 비밀번호를 확인 할 때도 확인을 거침
  def reveal_password
    # 사용자로부터 기존 비밀번호를 입력받아서 확인
    print '기존 비밀번호를 입력해주세요: '
    current_pw = gets.chomp

    # 틀렸을 경우 에러를 던져서 변경을 막음
    raise '기존 비밀번호와 일치하지 않습니다! 정보를 보여드릴 수 없습니다.' unless current_pw == @password

    # 맞으면 비밀번호 조회
    puts "인증 확인됨. 현재 비밀번호는 [#{@password}] 입니다."
  end
end

# 테스트

puts '=== 인증 시스템 시작 ==='

# 객체 생성 (초기 비밀번호 설정)
auth = AuthSystem.new

puts "\n-----------------------------\n"

# 로그인 시도
begin
  print '로그인 비밀번호를 입력하세요: '
  input = gets.chomp

  # 파라미터 이름이 달라도 자동으로 적용됨
  auth.login(input)

# 비밀번호가 틀렸을 경우 오류메시지 출력
rescue RuntimeError => e
  puts "경고: #{e.message}"
  exit
end

puts "\n-----------------------------\n"

# 비밀번호 변경 시도
puts '[비밀번호 변경 모드]'

begin
  auth.change_password

# 비밀번호가 틀렸을 경우 오류메시지 출력
rescue RuntimeError => e
  puts "변경 실패: #{e.message}"
  exit
end

puts "\n-----------------------------\n"

# 비밀번호 조회
puts '[내 정보 보기: 비밀번호 조회]'

begin
  auth.reveal_password

# 비밀번호가 틀렸을 경우 오류메시지 출력
rescue RuntimeError => e
  puts "조회 차단: #{e.message}"
  exit
end
