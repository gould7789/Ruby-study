# frozen_string_literal: true

# yield를 사용하는 이유?
# 공통된 작업은 메서드에 작성 후 달라지는 부분만 yield로 만들면 코드를 재사용하기 편하기 때문
def make_sandwich
  puts '1. 빵을 굽습니다.'
  puts '2. 양상추를 올립니다.'

  # yield: 메서드 밖으로 이동해 블럭을 실행 후 다시 돌아와서 나머지 메서드 내용 실행
  yield

  puts '4. 포장해서 건네줍니다.'
end

# 메서드 호출 (do ~ end가 블록임)
make_sandwich do
  puts '3. 저는 칠리소스를 뿌릴래요.'
end

puts '-----------------------------'

make_sandwich do
  puts '3. 저는 마요네즈를 뿌릴래요.'
end

puts

# yield로 데이터 넘겨주기
def greeting
  puts '인사를 합니다.'
  name = '현우'

  # yield 옆에 값을 적으면, 블록으로 넘겨 줌
  yield(name)

  puts '인사 끝!'
end

greeting do |x| # |x|는 yield가 던져준 변수를 받는 바구니
  puts "나는 #{x}입니다."
end
