# frozen_string_literal: true

# 文字列で構成される配列 arr が与えられるので、
# 配列の各文字列をスペースで結合した一つの文字列を返す関数 concatenateStrings を作成してください。
# 結合された文字列の末尾に追加された余分なスペースを削除してください。

# 리스트에 있는 문자열들을 한 문장으로 만들어주는 함수
def conect_string(arr)
  # join 메서드를 사용해서 리스트 안의 요소들을 한 문장으로 변환
  arr.join(' ')
end

puts conect_string(['Hello', 'World', 'Ruby'])
puts conect_string(['Hello'])
puts conect_string([])
