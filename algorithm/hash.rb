# frozen_string_literal: true

# 整数で構成される配列 nums が与えられた時、複数回出現する要素の中で、
# 配列内でのインデックスが最も小さい要素を見つける firstRepeatingNumber という関数を作成してください。
# 配列内に重複する要素が存在しない場合は、-1 を返してください。例えば、配列が [2,12,5,10,9,8] の場合、
# 重複する要素はないので -1 を返します。
# 配列が [1,5,3,4,3,1,6] の場合、最初に繰り返される要素は 1 なので 1 を返します。

def first_repeating_number(nums)
  # { 숫자 => 첫 등장 인덱스 } 를 기록
  first_index = {}

  # 중복이 발생한 숫자들만 모아서 [숫자, 첫 등장 인덱스] 형태로 저장
  duplicate_data = []

  # 배열을 인덱스와 함께 순회
  nums.each_with_index do |num, current_index|
    # 이전에 등장한 적이 있다면 (중복이 확인되었다면)
    if first_index.key?(num)
      # 중복된 숫자와 그 숫자의 첫 등장 인덱스를 후보 목록에 추가
      # 이 숫자의 첫 등장 인덱스는 first_index 해시에 기록되어 있음
      duplicate_data << [num, first_index[num]]
    else
      # 처음 등장하는 숫자이므로, 첫 등장 인덱스를 기록
      first_index[num] = current_index
    end
  end

  # 중복이 발생한 숫자가 없다면 -1 반환
  return -1 if duplicate_data.empty?

  # duplicate_data에서 '첫 등장 인덱스' (배열의 두 번째 요소: index)가
  # 가장 작은 쌍을 찾아 그 숫자 (배열의 첫 번째 요소: num)를 반환
  # min_by는 루비에서 특정 기준(블록)에 따라 최소값을 찾는 매우 유용한 메서드
  result_pair = duplicate_data.min_by { |num, index| index }

  # result_pair는 [숫자, 인덱스] 형태이므로, 숫자([0])만 반환
  result_pair[0]
end

puts first_repeating_number([2, 12, 5, 10, 9, 8])
puts first_repeating_number([1, 5, 3, 4, 3, 1, 6])
puts first_repeating_number([11, 45, 32, 75, 88, 15, 15])
