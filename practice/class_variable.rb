# frozen_string_literal: true

# インスタンス間でデータを共有
# クラスメソッドからアクサス可能
class Configuration
  # 모든 인스턴스가 공유하는 저장소
  @@settings = {}

  # 설정하기: 값을 넣음
  def self.set(key, value)
    @@settings[key] = value
  end

  # 가져오기: 값을 읽음
  def self.get(key)
    @@settings[key]
  end

  # 메일 전송 메서드
  def send_mail
    # メールを送信する処理

    # 현재 설정값들을 가져옴
    max_retry = Configuration.get(:max_retry)
    current_retry = Configuration.get(:retry_count)

    puts "메일 전송 시도 시작 (현재 재시도 횟수: #{current_retry})"

    # 재시도 횟수가 최대 시도 횟수에 도달하면 메서드 종료
    if current_retry >= max_retry
      puts "오류: 최대 재시도 횟수(#{max_retry})에 도달하여 전송을 포기합니다."
      return # 메서드 종료
    end

    begin
      # 실제 메일 전송 로직이 들어감
      # rand(0 ~ 1.0까지의 숫자를 랜덤으로 생성) 메서드를 사용하여 랜덤으로 에러 발생
      raise '네트워크 오류! 재시도 횟수를 증가합니다.' if rand < 0.8

      # 성공 메시지 + 재시도 횟수 초기화
      puts '성공: 메일이 전송되었습니다!'
      @@settings[:retry_count] = 0
    rescue StandardError => e
      # 실패시 처리
      puts "실패: #{e.message}"

      # sleep 추가: 연속으로 서버에 요청시 서버가 고장날 수 있기 때문
      sleep 2

      # 재시도 횟수 추가
      @@settings[:retry_count] += 1

      # @@settings[:retry_count]를 사용해서 바로 확인도 가능
      puts "현재 횟수: #{Configuration.get(:retry_count)}"
    end
  end
end

# 실행

# 초기값 설정
Configuration.set(:max_retry, 3) # 最大リトライ回数
Configuration.set(:retry_count, 0) # 現在のリトライ回数

# 객체 생성
config_instance = Configuration.new

# 여러 번 호출하여 재시도 로직이 작동하는지 확인
puts '--- 첫 번째 시도 ---'
config_instance.send_mail
puts

puts '--- 두 번째 시도 ---'
config_instance.send_mail
puts

puts '--- 세 번째 시도 ---'
config_instance.send_mail
puts

puts '--- 네 번째 시도 (최대 횟수 초과 테스트)'
config_instance.send_mail
