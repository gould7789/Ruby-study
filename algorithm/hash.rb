# frozen_string_literal: true

# 整数で構成される配列 nums が与えられた時、複数回出現する要素の中で、
# 配列内でのインデックスが最も小さい要素を見つける firstRepeatingNumber という関数を作成してください。
# 配列内に重複する要素が存在しない場合は、-1 を返してください。例えば、配列が [2,12,5,10,9,8] の場合、
# 重複する要素はないので -1 を返します。
# 配列が [1,5,3,4,3,1,6] の場合、最初に繰り返される要素は 1 なので 1 を返します。

def first_repeating_number(nums)
  # 빈도수를 기록할 해시를 생성
  # {숫자 => 횟수} 형태로 저장
  seen_numbers = {}
  repeating_candidates = [] # 중복이 확인된 숫자들을 저장할 배열

  # 배열을 순회
  nums.each do |num|
    if seen_numbers.key?(num)
      # 중복이 발생하면, 그 숫자를 후보 배열에 추가
      repeating_candidates << num

    else
      # 처음 등장하는 숫자는 기록
      # 여기서는 밸류값이 중요하지 않기 때문에 불린값으로 저장 가능
      seen_numbers[num] = true
    end
  end

  # 중복이 하나도 없었다면 -1 반환
  if repeating_candidates.empty?
    -1
  else
    # 모든 중복 후보들 중에서 가장 작은 숫자를 반환
    repeating_candidates.min
  end
end

puts first_repeating_number([2, 12, 5, 10, 9, 8])
puts first_repeating_number([11, 45, 32, 75, 88, 15, 15])
