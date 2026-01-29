# frozen_string_literal: true

class Character
  # インスタンスメソッド
  def hello
    puts 'こんにちは'
  end

  # クラスメソッド
  def self.info
    puts 'これはキャラクタークラスです'
  end
end

# インスタンスメソッドの使い方
hero = Character.new
hero.hello

# クラスメソッドの使い方
Character.info

# -------------------------

class Character_2
  def self.create_warrior
    puts '戦士を作成します'
    new('戦士', 200) # インスタンス作成可能
  end

  def self.create_wizard
    puts '魔法使いを作成します'
    new('魔法使い', 100)
  end

  def initialize(job, hp)
    @job = job
    @hp = hp
  end

  def status
    puts "職業: #{@job}"
    puts "HP: #{@hp}"
  end
end

warrior = Character_2.create_warrior
warrior.status
puts '=========='
wizard = Character_2.create_wizard
wizard.status
