# frozen_string_literal: true

# メールアドレス email が与えられるので、@ の位置を返す getAtLocation という関数を作成してください。
# ただし、@ が含まれていない場合は -1 を返してください。また、email の最初の文字は 1 番目と数えます。

def get_at_location(email)
  # 특정 단어의 인덱스를 반환하기 위해서 index 함수 사용
  result = email.index('@')

  # 특정 단어를 포함하고 있지 않다면 -1 반환
  if result.nil?
    -1
  else
    result + 1
  end
end

puts get_at_location('ccc@aaa.com')
puts get_at_location('c@cc@aaa.com')
puts get_at_location('cc c@aaa.com')
puts get_at_location('cc.c@aaacom')
puts get_at_location('cc.c@aaa.com')
puts get_at_location('@aaa.com')
puts get_at_location('aaaccc.com')
