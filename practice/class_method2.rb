# frozen_string_literal: true

# クラスメソッド(ファックトリメソッド)活用
class Warrior
  # level과 guild는 밖에서 값을 바꾸거나 읽을 수 있어야 하므로 accessor 사용
  # name, hp, items는 읽기만 하면 되므로 reader 사용
  attr_accessor :level, :guild
  attr_reader :name, :hp, :item

  # 생성자: new를 하면 가장 먼저 실행
  def initialize(name, hp)
    @name = name
    @hp = hp
    @level = 0 # 기본값 0
    @guild = '무소속' # 기본값 무소속
    @items = [] # 아이템 가방 (빈 배열)
  end

  # 인스턴스 메서드 (행동)
  # 아이템을 가방에 넣는 메서드
  def equip(item_name)
    @items << item_name # 배열에 추가
    puts "[시스템] #{@name}님이 '#{item_name}'을(를) 장착했습니다."
  end

  # 현재 상태를 보여주는 행동
  def status
    puts "=== #{@name}의 상태창 ==="
    puts "HP: #{@hp}"
    puts "레벨: #{@level}"
    puts "길드: #{@guild}"
    puts "장비: #{@items.join(', ')}"
    puts '========================='
  end

  # 클래스 메서드 (팩토리 메서드)
  # 복잡한 생성 과정을 한 번에 처리해주는 메서드
  def self.create_novice_warrior(name)
    puts '초보 전사 패키지를 생성합니다...'

    # 일단 기본적인 객체를 만듦 (new 호출 -> initialize 실행됨)
    warrior = new(name, 100)

    # 위에서 정의한 인스턴스 메서드들을 사용해서 세팅
    warrior.level = 1
    warrior.guild = '초보자 길드'
    warrior.equip('나무 몽둥이')
    warrior.equip('가죽 옷')

    # 세팅이 끝난 객체를 반환
    warrior
  end
end

# 팩토리 메서드로 생성
hero = Warrior.create_novice_warrior('루비짱')

puts

hero.status
