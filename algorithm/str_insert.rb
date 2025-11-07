# frozen_string_literal: true

# 文字列 s と数値 i を受け取り、i 番目に「_」を入れた文字列を返す、
# insertUnderscoreAt という関数を作成してください。
# 数値 i が受け取った文字列のサイズ以上の場合、文字列はそのまま返されます。

def insert_underscore_at(s, i)
  # freeze 돼있기 때문에 문자열 복사
  work_str = s.dup

  # 0 이상이고, work_str.length 미만
  if 0 <= i && i < work_str.length
    work_str.insert(i, '_')
  else
    s
  end
end

puts insert_underscore_at('stevejobs', 8)
puts insert_underscore_at('stevejobs', 9)
puts insert_underscore_at('stevejobs', 5)
puts insert_underscore_at('stevejobs', 0)
puts insert_underscore_at('stevejobs', 10)
puts insert_underscore_at('donaldtrump', 6)
puts insert_underscore_at('Baseball is very fun.', 5)
