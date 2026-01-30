# frozen_string_literal: true

class User
  # 접근제한자(attr_accessor)을 사용했을 때 내부에서 함수 접근 함수가 만들어짐
  attr_accessor :name

  # 읽기 위한 메서드(Getter)
  # def name
  #   return @name
  # end

  # 쓰기 위한 메서드(Setter)
  # def name=(value)
  #   @name = value
  # end
end

# 생성자에 self를 사용하는 이유
# name= 메서드에 특별한 기능을 만들었을 때 사용
class User2
  # attr_accessor 안 쓰고 직접 메서드를 작성

  # name= 메서드에 새로운 기능을 넣음
  def name=(value)
    if value == ''
      puts '이름은 비워둘 수 없습니다'
      return
    end

    puts '좋은 이름이네요. 저장하겠습니다.'
    @name = value
  end

  def initialize(input_name)
    # self(this와 비슷함)를 사용해서 넣기 -> 검사 과정을 거침
    # 객체 생성시 인수가 비었으면 name= 메서드 안의 코드가 실행
    self.name = input_name

    # 직접 넣기 (@변수 사용) -> 검사 하지 않고 바로 변수 선언(메서드 적용 안됨)
    # 객체 생성시 인수가 비었어도 그대로 적용
    @name = input_name
  end
end

# 예시
class User3
  attr_accessor :name

  # Setter 메서드를 직접 커스텀 (모든 이름을 대문자로 저장)
  def name=(value)
    puts '--> 이름을 대문자로 변환합니다.'
    @name = value.upcase
  end

  def initialize(input_name)
    # [O] 메서드를 통과함 -> "RUBY"로 저장됨 (로직 작동)
    self.name = input_name

    # [X] 변수에 직접 넣음 -> "ruby"로 저장됨 (로직 무시)
    # @name = input_name
  end
end
