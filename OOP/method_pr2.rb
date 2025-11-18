# frozen_string_literal: true

# 開発中のアプリケーション内で犬をデータとして表すことにしました。
# 以下に従って、Dog クラスを作成し、テストケースを出力してください。

# String name: 犬の種類の名前
# int size: 犬のサイズ
# int age: 犬の年齢
# String bark(): 犬の鳴き声を文字列として返します。
#   - 犬のサイズが 50 以上の時、Wooof! Woof!、サイズが 20 以上の時、Ruff! Ruff!、
#   - それ以外の時は、Yip! Yip! と返します。
# int calcHumanAge(): 犬の年齢から人間の年齢に換算します。人間の年齢＝ 12 +（犬の年齢 - 1）× 7 を使用してください。

# 강아지의 데이터를 표시하는 클래스
class Dog
  # 접근 제한자
  attr_reader :name, :size, :age

  # 생성자
  def initialize(name, size, age)
    @name = name
    @size = size
    @age = age
  end

  # 사이즈에 따른 울음소리
  def bark
    if size >= 50
      "Wooof! Wooof!"
    elsif size >= 20
      "Ruff! Ruff!"
    else
      "Yip! Yip!"
    end
  end

  # 강아지의 나이를 인간의 나이로 계산
  def calc_human_age
    12 + (age - 1) * 7
  end
end

# 객체 생성
goldenRetriever = Dog.new('Golden Retriever', 60, 10)
puts goldenRetriever.bark
puts goldenRetriever.calc_human_age

siberianHusky = Dog.new('Siberian Husky', 55, 6)
puts siberianHusky.bark
puts siberianHusky.calc_human_age

poodel = Dog.new('poodle', 10, 1)
puts poodel.bark
puts poodel.calc_human_age

shibaInu = Dog.new('shibaInu', 35, 4)
puts shibaInu.bark
puts shibaInu.calc_human_age
