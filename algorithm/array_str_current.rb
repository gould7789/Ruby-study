# frozen_string_literal: true

# 文字の配列 arr が与えられたとき、
# 配列内で最も長く連続して出現する文字とその長さを返す関数
# findLongestConsecutiveSequence を作成してください。

# 연속 쌍의 최댓값을 찾는 함수
def longest_sequence(arr)
  # 배열이 비어있다면 0 반환
  return 0 if arr.empty?

  # 변수 선언
  max_length = 1  # 최대 연속 길이
  current_length = 1  # 현재 확인 중인 연속 길이

  # 배열을 순회
  idx = 1
  while idx < arr.length
    # 현재 요소와 이전 요소 비교
    if arr[idx] == arr[idx - 1]
      # 문자가 같다면 현재 연속 길이를 늘림
      current_length += 1
    # 문자가 다르다면 현재 길이를 1로 초기화
    else
      current_length = 1
    end

    # 매 단계마다 최대 길이 업데이트
    if current_length > max_length
      max_length = current_length
    end

    # 다음 요소로 이동
    idx += 1
  end

  # 최종 반환
  max_length
end

puts longest_sequence(['a','a','b','b'])
puts longest_sequence(['a','a','a','a'])
puts longest_sequence([])
