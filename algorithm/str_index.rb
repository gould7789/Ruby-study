# frozen_string_literal: true

# Tony は上司からドキュメントの修正を指示されました
# 自身が作成した膨大な数のドキュメントを、一から修正するのは大変なので、
# 指摘された部分だけを削除するプログラムを作成しようと思いました。
# 文字列 string と数値 i が与えられるので、i 番目の文字が削除された文字列を返す、
# deleteAt という関数を作成してください。
# 数値 i が受け取った文字列のサイズより大きい場合は、文字列をそのまま返します。

def delete_at(s, i)
  # freeze로 문자열을 변경하지 못하게 했기 때문에 문자열을 복사해서 새로운 개체 생성
  work_str = s.dup

  # if 조건문 안에 실행할 코드가 단 한 줄일 경우, 한 줄 형태로 변경 가능
  # 비교연산자 대신에 betwwen? 함수로 a 이상 b 이하로 가능
  # slice!는 제외된 문자값을 반환하고, 문자열 그 자체에 영향을 줌(주소값 자체를 변경하여 원본이 바뀜)
  # 그러므로 slice!로 잘라낸 문자값을 사용하려면 따로 변수에 저장해주어야함
  work_str.slice!(i - 1, 1) if i.between?(1, work_str.length)

  # 범위에서 벗어나있을 경우 문자열 그대로 반환
  work_str
end

puts delete_at('abcdefg', 0)
puts delete_at('abcdefg', 4)
puts delete_at('abcdefg', 8)
