# frozen_string_literal: true

# 동물 울음소리 기능을 통한 상속과 오버라이딩 연습

# 부모 클래스
class Animal
  # 동물 울음소리 메서드 -> 초기에는 아무 소리도 나지 않음
  def speak
    puts '...'
  end
end

# 자식 클래스 (사자)
class Lion < Animal
  # 부모 클래스의 메서드 오버라이딩
  def speak
    puts '으르렁!'
  end
end

# 자식 클래서 (앵무새)
class Parrot < Animal
  # 주인 이름은 읽기 및 쓰기 가능
  attr_accessor :name

  # 주인 이름을 지정하는 메서드
  def set_master(name)
    @master = name
  end

  # 부모 클래스의 메서드를 오버라이딩
  def speak
    if @master
      puts "안녕! #{@master}!"
    else
      # 주인이 없으면 기본인사
      puts '안녕! 안녕!'
    end
  end
end

# 객체 생성
# 사자
puts '--- 사자 ---'
lion = Lion.new
lion.speak

# 앵무새 (아직 주인이 없음)
puts "\n--- 앵무새 ---"
parrot = Parrot.new
parrot.speak

# 앵무새 (주인 등록 후)
puts "\n--- 주인 등록 후 ---"
parrot.set_master('이현우')
parrot.speak
