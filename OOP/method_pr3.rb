# frozen_string_literal: true

# 植物をオブジェクトを使って表現します。以下に従って、Plant クラスを作成し、テストケースを出力してください。

# String species: 植物の種類の名前
# int height: 植物の高さ（cm 単位）
# int age: 植物の年齢（年単位）
# String photosynthesize(int sunlightHours): 光合成のプロセスをシミュレートします。
# sunlightHours は、その日に受け取る太陽光の時間数を示します。光合成の効率は、
# 受け取る日照時間によって変わります。8 時間未満だと "Needs more sunlight!"、
# 8 時間以上 12 時間以下だと "Healthy growth!"、12 時間を超えると "Too much sunlight!" と返します。

# String absorbWater(int waterAmount): 水分吸収プロセスをシミュレートします。
# waterAmount は、植物が受け取る水の量（リットル単位）を示します。水の量によって成長の反応が変わります。
# 1 リットル未満だと "Needs more water!"、1 リットル以上 2 リットル以下だと "Perfectly watered!"、
# 2 リットルを超えると "Overwatered!" と返します。

# 광합성과 수분흡수를 시물레이션
class Plant
  # 접근 제한자
  attr_reader :species, :height, :age

  # 생성자
  def initialize(species, height, age)
    @species = species
    @height = height
    @age = age
  end

  # 광합성 시간에 따른 햇빛량 조절
  def photosynthesize(sunlight_hours)
    if sunlight_hours > 12
      'Too much sunlight!'
    elsif sunlight_hours >= 8
      'Healthy growth!'
    else
      'Needs more sunlight!'
    end
  end

  # 수분량 조절
  def absorb_water(water_amount)
    # 조건문을 사용하여 수분 흡수량에 따른 결과를 반환합니다.
    if water_amount < 1
      'Needs more water!'
    elsif water_amount <= 2 # 1리터 이상 2리터 이하
      'Perfectly watered!'
    else # 2리터 초과
      'Overwatered!'
    end
  end
end

# 객체 생성
plant1 = Plant.new('Rose', 10, 1)
puts plant1.photosynthesize(6)
puts plant1.absorb_water(0)

plant2 = Plant.new("Oak", 200, 50)
puts plant2.photosynthesize(10)
puts plant2.absorb_water(2)

plant3 = Plant.new("Cactus", 30, 100)
puts plant3.photosynthesize(15)
puts plant3.absorb_water(3)
