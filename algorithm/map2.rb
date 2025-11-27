# frozen_string_literal: true

# 文字で構成される配列 charList が与えられるので、大文字は小文字に、
# 小文字は大文字に変換し新しい配列を返す swapCase という関数を map 関数を使用して作成してください。

# 배열 안의 요소들의 대소문자를 변환 시켜주는 함수
def swap_case(char_list)
  # 긴 버전
  char_list.map { |char| char.swapcase }

  # 짧은 버전
  char_list.map(&:swapcase)
end

p swap_case(['l', 'A', 'm', 'b', 'D', 'A'])
p swap_case(['a', 'E', 's', 'P', 'A'])
