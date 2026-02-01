# frozen_string_literal: true

# 同じクラス名の衝突を防げる
# 팀 개발을 할 때는 종종 클래스명이 겹치는 일이 있을 수 있음
# 클래스명이 겹치더라도 모듈을 통해 이름 공간 구조를 사용하면 같은 클래스명이더라도 기능을 다르게 정의 가능함
class Animal
  def speak
    puts '鳴き声'
  end
end

# 계층구조를 통해 많은 모듈 삽입 가능
module Zoo
  module Uneno
    class Animal
      def speak
        puts '動物園の動物が鳴いています'
      end
    end
  end
end

module Farm
  class Animal
    def speak
      puts '農場の動物が鳴いています'
    end
  end
end

animal = Animal.new
animal.speak

zoo_animal = Zoo::Uneno::Animal.new # ネスト(入れ子に)した名前空間
zoo_animal.speak

farm_animal = Farm::Animal.new
farm_animal.speak
