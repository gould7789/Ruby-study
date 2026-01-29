# frozen_string_literal: true

class Character
  def initialize(name = '名無し', hp = 100)
    @name = name
    @hp = hp
    puts 'キャラクターが作られました'
  end

  def show_status
    puts "名前: #{@name}"
    puts "HP: #{@hp}"
  end
end

hero = Character.new('とまだ', 200)
hero.show_status
