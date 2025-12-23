# frozen_string_literal: true

# 부모 클래스
class Hero
  attr_reader :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  # 공통된 행동
  def move
    puts "#{@name}이(가) 걸어갑니다."
  end

  # 기본 공격
  def attack
    puts "#{@name}이(가) 맨주먹으로 때립니다."
  end
end

# 자식 클래스 (전사): Hero를 상속받음 (< Hero)
class Warrior < Hero
  # 부모에게 물려받은 move, attack 메서드 사용 가능

  # 오버라이딩(Overriding): 부모의 메서드를 무시하고 내 방식대로 덮어씀
  def attack
    puts "#{@name}이(가) 검을 휘두릅니다."
  end
end

# 자식 클래스 (마법사): Hero를 상속 받음 (< Hero)
class Wizard < Hero
  # Wizard만의 새로운 기술 추가
  def fireball
    puts "#{@name}이(가) 화염구를 날립니다."
  end
end

# 부모 클래스: 몬스터
class Monster
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def scare
    puts "#{@name}이(가) 소리칩니다."
  end
end

# 자식 클래스 (슬라임): Monster을 상속 받음 (< Monster)
class Slime < Monster
  def bounce
    puts "#{@name}이 통통 튑니다."
  end
end

# 자식 클래스 (드래곤): Monster을 상속 받음 (< Monster)
class Dragon < Monster
  def scare
    puts "#{@name}이 불을 뿜습니다."
  end
end

# 객체 생성
puts '--- 전사 ---'
warrior = Warrior.new('바바리안', 200)
warrior.move # 부모에게 물려받은 기능
warrior.attack # Warrior가 덮어쓴 기능

puts "\n--- 마법사 ---"
# 객체 생성
wizard = Wizard.new('간달프', 100)
wizard.move # 부모한테 물려받은 기능
wizard.attack # 마법사는 attack을 안 만들었으므로 부모의 '맨주먹'이 나감
wizard.fireball # 마법사만의 기능

puts "\n--- 슬라임 ---"
slime = Slime.new('초록 슬라임')
slime.scare
slime.bounce

puts "\n--- 드래곤 ---"
dragon = Dragon.new('레드 드래곤')
dragon.scare
