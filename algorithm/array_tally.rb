# frozen_string_literal: true

# Amuedo はあるゲームに参加しています。このゲームでは、
# 参加者にランダムに数字が書かれたカードが複数枚配られます。
# 参加者は、カードに書かれた数字が、その数値と同じ回数だけ手持ちに存在するかを確認する必要があります。
# 例えば、手持ちのカードが [1,2,3,4,4,4,4,1,3,5,3] の場合、3 枚の「3」と 4 枚の「4」がこの条件に合致します。
# この条件に合う中で最も大きい数字を場に出します。
# 場に出した数字が最も大きい参加者が勝者となります。
# 関数 findMax を作成して、渡されたカードの数字の配列 numbers から、場に出すべき数字を返してください。

# 배열의 숫자의 중복된 갯수가 그 숫자와 일치할 시 최댓값을 반환하는 함수
def find_max(numbers)
  # 몇장이 중복인지 카운팅할 변수
  total_count = 0
  # 조건에 맞는 숫자들 중에서 가장 큰 값
  max_num = 0

  # 중복된 숫자를 제거한 새로운 배열 생성
  work_arr = numbers.uniq

  # work_arr를 순회하며 num을 count에 넣고, numbers 배열에서 카운팅 하기
  work_arr.each do |num|
    total_count = numbers.count(num)

    # 중복된 숫자가 자신과 일치하고, 최댓값보다 크다면 업데이트
    if num == total_count && total_count > max_num
      max_num = num
    end
  end

  # ------------------------------------------------------------------
  # tally 메서드 활용: 배열의 요소별 개수를 한 번에 세어주는 메서드

  # tally 메서드를 사용하여 모든 숫자의 빈도수를 한 번에 계산
  # 결과: {1=>2, 2=>1, 3=>3, 4=>4, 5=>1} 와 같은 Hash가 됨
  counts = numbers.tally

  # counts 해시를 순회 (num은 키, count는 밸류)
  counts.each do |num, count|
    # 조건: 숫자의 값(num)이 빈도수(count)와 같고, 현재 최댓값보다 크다면 업데이트
    if num == count && num > max_num
      max_num = num
    end
  end

  # 최종 반환
  max_num
end

puts find_max([1, 1, 2, 3, 3, 3, 4, 4, 4, 4, 5])
puts find_max([1, 2, 2, 3, 3, 3, 4, 5, 6, 7])
puts find_max([1, 1, 2])
puts find_max([11, 200, 35, 8, 34, 56, 8, 8, 30, 8, 450, 2, 8, 2, 70, 8, 400, 8, 8])
