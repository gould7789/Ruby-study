# frozen_string_literal: true

# Walker は出版社で文章チェックの仕事をしています。
# () や {}、[] で括られている文章をチェックしているのですが、正しく使われているか見なければいけません。
# 文字列 parentheses が与えられるので、それが有効かどうか判定する、
# isParenthesesValid という関数を定義してください。与えられる文字列が有効の条件は以下の通りです。

# 左カッコが同じ種類の右カッコで閉じられてる
# 左カッコが右カッコによって正しい順で閉じられている

def parentheses_valid?(parentheses)
  # 짝에 맞게 정리
  paris = { ')' => '(', '}' => '{', ']' => '[' }

  # 여는 괄호를 담을 스택 준비
  stack = []

  parentheses.each_char do |char|
    # 여는 괄호면 스택에 넣음
    if paris.values.include?(char)
      stack.push(char)

    # 닫는 괄호라면 스택이 비어있거나, 스택에서 꺼낸 짝이 안 맞으면 실패
    elsif paris.keys.include?(char)
      return false if stack.empty? || stack.pop != paris[char]
    end
  end

  # 루프가 끝났을 때 스택이 비어 있어야 성공
  stack.empty?
end

puts parentheses_valid?('{}')
puts parentheses_valid?('[{}]')
puts parentheses_valid?('[{(]')
puts parentheses_valid?(']][}{({()){}(')
