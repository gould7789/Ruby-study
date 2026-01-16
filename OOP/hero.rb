# frozen_string_literal: true

class Hero
  attr_reader :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def attack(target)
    damage = 10
    puts "[용사] #{@name}이(가) #{target.name}에게 #{damage}의 피해를 입혔습니다!"
    target.take_damage(damage)
  end

  def alive?
    @hp > 0
  end
end
