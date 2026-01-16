# frozen_string_literal: true

# 필요한 파일들을 불러옴
require_relative 'hero'
require_relative 'monster'

# 오픈 클래스
# Hero 클래스는 hero.rb에 이미 정의되어 있지만
# 여기서 다시 열어서 부족한 기능을 추가 해줄 수 있음
# 현재 Hero 클래스에 take_damage 메서드가 없으므로 추가
class Hero
  def take_damage(amount)
    @hp -= amount
    puts "  -> #{@name}의 체력이 #{@hp} 남았습니다."
  end
end

# 게임 시작
puts '--- 게임 시작 ---'

hero = Hero.new('민수현', 100)
monster = Monster.new('정우영', 50)

# 둘 중 하나가 쓰러질 때까지 루프
while hero.alive? && monster.alive?
  puts "\n--- 턴 시작 ---"

  # Hero 공격
  hero.attack(monster)
  break unless monster.alive? # 몬스터가 죽으면 반복문 탈출

  # Monster 공격
  monster.attack(hero)
end

puts "\n --- 전투 종료 ---"
if hero.alive?
  puts "승리! 용사 #{hero.name}이(가) 몬스터를 물리쳤습니다!"
else
  puts '패배. 용사가 쓰러졌습니다.'
end
