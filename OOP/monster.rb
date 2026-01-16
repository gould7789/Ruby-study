# frozen_string_literal: true

class Monster
  attr_reader :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def attack(target)
    damage = 5
    # 여기서 target은 용사(Hero) 객체가 됨
    puts "[몬스터] #{@name}이(가) #{target.name}를 물어뜯어 #{damage}의 피해를 줬습니다!"
    target.take_damage(damage)
  end

  # 피해를 입는 메서드
  def take_damage(amount)
    @hp -= amount
    puts "  -> #{name}의 체력이 #{@hp} 남았습니다."
  end

  def alive?
    @hp > 0
  end
end
