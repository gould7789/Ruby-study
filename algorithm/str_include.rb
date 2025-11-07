# frozen_string_literal: true

# 面倒くさがりの John は長い文章を読むことがなによりも嫌いです。
# そのため、文章の中に自分が知りたいキーワードが含まれているのか否かを
# 瞬時に判定してくれるシステムをつくろうと思いました。
# 文字列 s1 と文字列 s2 が与えられるので、
# その中に s2 という文字列が含まれているのかを調べる isSubstring という関数を定義してください。

def is_substring(s1, s2)
  s1.include?(s2)
end

puts is_substring('hello world!', 'world!')
puts is_substring('hello world!', 'World!')
puts is_substring('hello pluto!', 'world!')
puts is_substring('hello world!', 'd!rolw')
puts is_substring('hello pluto!', 'do')
puts is_substring('Fly away duck.', 'aw')
