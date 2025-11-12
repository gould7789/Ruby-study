# frozen_string_literal: true

# 文字列 s と文字 c が入力として与えられるので、s の中で c が最初に現れる位置までの部分文字列を取得し、
# その部分文字列を小文字に変換する関数 lowercaseSubstringUpToChar を作成してください。
# s の中に c が含まれていない場合は、s をそのまま返してください。

def lowercase_substring_uptochar(s, c)
  # 문자열 복사
  work_str = s.dup

  # c의 인덱스
  idx = s.index(c)

  # s의 문자열에 c를 포함하고 있는 경우, 인덱스의 전까지 출력 및 소문자로 변환
  work_str = work_str[0, idx].downcase if idx

  # s의 문자열에 c를 포함하고 있지 않을 경우 s를 그대로 출력
  # 최종 출력
  work_str
end

puts lowercase_substring_uptochar('abcde', 'a')
puts lowercase_substring_uptochar('abcde', 'b')
puts lowercase_substring_uptochar('abcde', 'c')
puts lowercase_substring_uptochar('abcde', 'd')
puts lowercase_substring_uptochar('abcde', 'e')
puts lowercase_substring_uptochar('abcde', 'f')
